# xai-faf-core

**The Crown: Rust MCP Engine for FAF**

Championship-grade Rust implementation of the MCP (Model Context Protocol) server for FAF (Foundational AI-context Format).

## Features

| Feature | Description | Status |
|---------|-------------|--------|
| Rust MCP Server | Native Tokio async implementation | ✅ |
| Score Project | Glass Hood transparent scoring | ✅ |
| Bi-Sync Heal | CLAUDE.md ↔ project.faf sync | ✅ |
| WJTTC Suite | F1-inspired test framework | 300/300 |
| Weight Evaluation | Configurable scoring weights | ✅ |
| Grok-native Loader | Optimized for Grok integration | ✅ |
| Elite Palace Viz | Svelte dashboard | ✅ |
| One-Click Demo | <30 second setup | ✅ |

## Quick Start

```bash
# One-click demo
./demo.sh

# Or manually:
cargo build --release
cargo run --release
```

## Interactive CLI Demo

Try the live interactive terminal at `/vip/xai/app`:

```bash
# First time - instant xAI default
$ faf init --xai
✓ Created project.faf with xAI default weights [0.40, 0.35, 0.15, 0.10]
✓ Ready for Grok 4.1+ native loader
Completed in 8ms

# Switch to custom weights
$ faf use --user
✓ Switched to user-defined weights
✓ project.faf updated
Healed in 7ms
```

**Context-On-Demand, FAST⚡️AF** - Sub-10ms project switching with zero configuration drift.

## Architecture

```
xai-faf-core/
├── src/main.rs        # 1800-line MCP server
├── Cargo.toml         # Rust dependencies
├── weights.lock       # Scoring weights [0.40, 0.35, 0.15, 0.10]
├── svelte-ui/         # Elite Palace dashboard
├── wjttc/             # Championship test suite
└── demo.sh            # One-click setup
```

## MCP Tools

### faf_score_aligned
Score a project with full Glass Hood transparency.

```json
{
  "name": "faf_score_aligned",
  "arguments": {
    "path": "/path/to/project"
  }
}
```

### bi_sync
Heal CLAUDE.md ↔ project.faf synchronization.

```json
{
  "name": "bi_sync",
  "arguments": {
    "path": "/path/to/project",
    "direction": "faf_to_claude"
  }
}
```

## MCP Resources

### faf://project/dna
Access project DNA directly.

## Glass Hood API

All scoring operations return full transparency:

```json
{
  "score": 85,
  "breakdown": {
    "core_dna": 34,
    "instructions": 30,
    "context": 12,
    "metadata": 9
  },
  "weights": [0.40, 0.35, 0.15, 0.10],
  "recommendations": ["..."]
}
```

## Test Suite

```bash
# Run all 300 tests
cargo test

# Expected output
running 300 tests
test result: ok. 300 passed; 0 failed
```

## License

MIT

---

*F1-Inspired Software Engineering*
*🏎️⚡️wolfejam.dev format|driven*
