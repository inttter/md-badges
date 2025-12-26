# Playground

This project serves as a playground for experimenting with markdown badges and related features.

## Purpose

The main goal is to provide bulk selection and instant copyable markdown badges, while showcasing my Rust knowledge through practical implementations and integrations.

## Demo

Check out the live demo: [Playground Demo](https://md-badge-playground.vercel.app)

## Getting Started

Clone the repository and start exploring different markdown badge implementations.

```bash
git clone https://github.com/inttter/md-badges.git
cd md-badges/playground
```

## Building with `wasm-pack`

To build the Rust code for WebAssembly and integrate it with the web frontend, follow these steps:

1. **Install `wasm-pack`** (if you haven't already):

```bash
cargo install wasm-pack
```

2. **Build the Rust project for the web target**:

```bash
cd rust
cargo install
wasm-pack build --target web --out-dir ../web/pkg
```

This command compiles the Rust code to WebAssembly and outputs the generated files to the `../web/pkg` directory.

3. **Start the web frontend** (if applicable):

Navigate to the `web` directory and start your frontend development server as needed.

```bash
cd ../web
# For example, if using npm:
npm install
npm run dev
```

Now you can experiment with the playground using the latest Rust-to-WebAssembly integration.
