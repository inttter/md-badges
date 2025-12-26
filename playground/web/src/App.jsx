import { useEffect, useState } from "react";
import { initWasm, parse_readme } from "./wasm";
import Section from "./Section";

export default function App() {
  const [sections, setSections] = useState([]);
  const [selected, setSelected] = useState(new Set());

  useEffect(() => {
    async function load() {
      await initWasm();

      const res = await fetch(
        "https://raw.githubusercontent.com/yogithesymbian/md-badges-playground/main/README.md",
      );
      const md = await res.text();

      const result = parse_readme(md);
      setSections(result.sections);
    }

    load();
  }, []);

  function toggle(code) {
    setSelected((prev) => {
      const next = new Set(prev);
      next.has(code) ? next.delete(code) : next.add(code);
      return next;
    });
  }

  function copySelected() {
    navigator.clipboard.writeText(Array.from(selected).join(" "));
  }

  return (
    <div style={{ padding: 24 }}>
      <h1>Badge Playground</h1>
      <p>
        https://github.com/inttter/md-badges |
        https://github.com/yogithesymbian/md-badges-playground/tree/add/playground
      </p>

      {sections.map((section) => (
        <Section
          key={section.title}
          section={section}
          selected={selected}
          toggle={toggle}
        />
      ))}

      <div style={{ position: "fixed", bottom: 16, right: 16 }}>
        <button onClick={copySelected}>Copy selected ({selected.size})</button>
      </div>
    </div>
  );
}
