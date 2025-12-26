use pulldown_cmark::{Event, HeadingLevel, Parser, Tag, Options};
use wasm_bindgen::prelude::*;
use serde::Serialize;

#[derive(Serialize)]
pub struct BadgeItem {
    pub preview_md: String,
    pub code_md: String,
    pub preview_url_md: String,
}

#[derive(Serialize)]
pub struct Section {
    pub title: String,
    pub items: Vec<BadgeItem>,
}

#[derive(Serialize)]
pub struct ParseResult {
    pub sections: Vec<Section>,
}

fn is_separator_row(row: &[String]) -> bool {
    row.iter().all(|cell| {
        cell.chars().all(|c| c == '-' || c == ':' || c == ' ')
    })
}

fn extract_image_url(md: &str) -> Option<String> {
    let start = md.find("](")? + 2;
    let end = md[start..].find(')')? + start;
    Some(md[start..end].to_string())
}


#[wasm_bindgen]
pub fn parse_readme(_markdown: &str) -> JsValue {
    let mut options = Options::empty();
    options.insert(Options::ENABLE_TABLES);
    let parser = Parser::new_ext(_markdown, options);

    let mut sections: Vec<Section> = Vec::new();
    let mut current_section: Option<Section> = None;

    let mut in_heading = false;
    let mut heading_text = String::new();
    let mut heading_level: Option<HeadingLevel> = None;

    let mut in_cell = false;
    let mut is_target_table = false;

    let mut current_row: Vec<String> = Vec::new();
    let mut current_cell = String::new();

    let mut header_cells: Vec<String> = Vec::new();
    let mut reading_header = false;

    for event in parser {
        match event {
            Event::Start(Tag::Heading(level, ..)) => {
                heading_text.clear();
                heading_level = Some(level);
                in_heading = true;
            }
            Event::Text(text) if in_heading => {
                heading_text.push_str(&text);
            }
            Event::End(Tag::Heading(_, ..)) => {
                in_heading = false;

                if heading_level == Some(HeadingLevel::H3)
                    && heading_text.trim() != "Table Of Contents" {
                    if let Some(section) = current_section.take() {
                        sections.push(section);
                    }

                    current_section = Some(Section {
                        title: heading_text.trim().to_string(),
                        items: Vec::new(),
                    })
                }
            }

            Event::Start(Tag::Table(_)) => {
                header_cells.clear();
                reading_header = true;
                is_target_table = false;
            }
            Event::End(Tag::Table(_)) => {
                is_target_table = false;
            }
            Event::Start(Tag::TableRow) => {
                current_row.clear();
            }
            Event::Start(Tag::TableCell) => {
                current_cell.clear();
                in_cell = true;
            }
            Event::Text(text) if in_cell => {
                current_cell.push_str(&text);
            }
            Event::Code(code) if in_cell => {
                current_cell.push_str(&code);
            }

            Event::End(Tag::TableCell) => {
                in_cell = false;
                current_row.push(current_cell.trim().to_string());
            }
            Event::End(Tag::TableRow) => {
                if is_separator_row(&current_row) {
                    continue;
                }

                if reading_header {
                    header_cells = current_row.clone();
                    reading_header = false;
                    is_target_table = header_cells.len() == 2;

                }

                if is_target_table {
                    if let Some(section) = current_section.as_mut() {
                        if current_row.len() == 2 {
                            section.items.push(BadgeItem {
                                preview_md: current_row[0].clone(),
                                code_md: current_row[1].clone(),
                                preview_url_md: extract_image_url(&current_row[1]).unwrap(),
                            });
                        }
                    }
                }
            }
            _ => {}
        }
    }

    if let Some(section) = current_section {
        sections.push(section);
    }
    let result = ParseResult {
        sections,
    };
    serde_wasm_bindgen::to_value(&result).unwrap()
}
