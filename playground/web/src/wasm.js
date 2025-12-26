import init, { parse_readme } from '../pkg/md_badges_parser.js'

let ready = false

export async function initWasm() {
    if (!ready) {
        await init()
        ready = true
    }
}

export { parse_readme }
