#!/bin/bash
# xai-faf-core One-Click Demo
# Target: <30 seconds from clone to running

set -e

echo ""
echo "================================"
echo "   xai-faf-core Demo"
echo "   The Crown: Rust MCP Engine"
echo "================================"
echo ""

# Track time
START_TIME=$(date +%s)

# 1. Build the Rust MCP server
echo "[1/4] Building Rust MCP server..."
cargo build --release 2>&1 | grep -E "Compiling|Finished|error" || true

# 2. Run the test suite
echo ""
echo "[2/4] Running WJTTC test suite..."
TEST_OUTPUT=$(cargo test 2>&1)
PASSED=$(echo "$TEST_OUTPUT" | grep -o "[0-9]* passed" | head -1)
echo "Result: $PASSED (Target: 246+)"

# 3. Show the Glass Hood scoring
echo ""
echo "[3/4] Glass Hood scoring weights:"
if [ -f "weights.lock" ]; then
    cat weights.lock
else
    echo "WEIGHTS: [0.40, 0.35, 0.15, 0.10]"
    echo "- 40% Core DNA"
    echo "- 35% Instructions"
    echo "- 15% Context"
    echo "- 10% Metadata"
fi

# 4. Show MCP tools available
echo ""
echo "[4/4] MCP Tools available:"
echo "  - faf_score_aligned: Score any project with transparency"
echo "  - bi_sync: Heal CLAUDE.md <-> project.faf sync"
echo "  - faf://project/dna: Resource access"

# Calculate elapsed time
END_TIME=$(date +%s)
ELAPSED=$((END_TIME - START_TIME))

echo ""
echo "================================"
echo "   Demo Complete!"
echo "   Elapsed: ${ELAPSED}s"
echo "================================"
echo ""
echo "To run the MCP server:"
echo "  cargo run --release"
echo ""
echo "To start Elite Palace UI:"
echo "  cd svelte-ui && npm install && npm run dev"
echo ""
