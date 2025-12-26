use std::fs;
use pulldown_cmark::{Parser, Event, Tag, Options};

fn main() {
    let md = fs::read_to_string("./test/README.md")
        .expect("Failed to read README.md");

    let mut options = Options::empty();
    options.insert(Options::ENABLE_TABLES);

    let parser = Parser::new_ext(&md, options);

    for event in parser {
        match &event {
            Event::Start(Tag::Table(_)) => println!("== TABLE START =="),
            Event::Start(Tag::TableRow) => println!("ROW START"),
            Event::Start(Tag::TableCell) => println!("CELL START"),
            Event::Code(code) => println!("CODE: {:?}", code),
            Event::Text(t) => println!("TEXT: {:?}", t),
            _ => {}
        }
    }
}
