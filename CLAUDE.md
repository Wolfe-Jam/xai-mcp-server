# CLAUDE.md - xai-faf-core

## Project: xai-faf-core
**The Crown: Rust MCP Engine for FAF**

### Mission
Championship-grade Rust MCP server demonstrating FAF capabilities for xAI/Grok integration.

### Architecture
```
xai-faf-core/
├── src/main.rs        # 1800-line MCP server
├── Cargo.toml         # Rust dependencies
├── weights.lock       # Scoring weights
├── project.faf        # Project DNA
├── CLAUDE.md          # This file
├── package.json       # Mono-repo config
├── README.md          # Documentation
├── svelte-ui/         # Elite Palace dashboard
├── wjttc/             # 200/200 test suite
└── demo.sh            # One-click <30s setup
```

### Key Features
1. **faf_score_aligned** - Glass Hood scoring with full transparency
2. **bi_sync** - CLAUDE.md ↔ project.faf healing
3. **faf://project/dna** - Resource access to project context
4. **WJTTC Suite** - 200 championship-grade tests

### Tech Stack
- **Language**: Rust
- **Runtime**: Tokio async
- **Protocol**: MCP (Model Context Protocol)
- **Transport**: stdio JSON-RPC
- **Frontend**: Svelte (Elite Palace)

### Weights
```
WEIGHTS: [0.40, 0.35, 0.15, 0.10]
- 40% Core DNA (project identity)
- 35% Instructions (AI guidance)
- 15% Context (human/state)
- 10% Metadata (tags/scoring)
```

### Commands
```bash
# Build
cargo build --release

# Run MCP server
cargo run --release

# Run tests
cargo test

# Lint
cargo clippy --all-targets
```

### Quality Bar
- Zero errors
- All tests passing (200/200)
- Clippy clean
- Glass Hood transparency on all scoring

### Commit Format
All commits MUST use:
```
🏎️⚡️wolfejam.dev format|driven

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude <noreply@anthropic.com>
```

---

**STATUS: BI-SYNC ACTIVE** - Synchronized with project.faf

*Last Sync: 2025-11-24*
*🏎️⚡️_championship_sync*
