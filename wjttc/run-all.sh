#!/bin/bash
# WJTTC - Wolfe-Jam Test The Crown
# F1-inspired testing: when brakes must work flawlessly, so must our code

set -e

echo "================================"
echo "WJTTC Test Suite - Running All"
echo "================================"

# Move to project root
cd "$(dirname "$0")/.."

echo ""
echo "[1/3] Running Rust tests..."
TEST_OUTPUT=$(cargo test --release 2>&1)
echo "$TEST_OUTPUT" | tail -20

# Extract test count from output
PASSED=$(echo "$TEST_OUTPUT" | grep -o "[0-9]* passed" | head -1 | grep -o "[0-9]*")
FAILED=$(echo "$TEST_OUTPUT" | grep -o "[0-9]* failed" | head -1 | grep -o "[0-9]*")

echo ""
echo "[2/3] Building release binary..."
cargo build --release --locked 2>&1 | grep -E "Compiling|Finished|error" || true

echo ""
echo "[3/3] Verifying binary..."
if [ -f "target/release/xai-faf-core" ]; then
    echo "Binary: target/release/xai-faf-core OK"
else
    echo "Binary: NOT FOUND"
    exit 1
fi

echo ""
echo "================================"
echo "WJTTC CLEAR - CROWN READY"
echo "Tests: ${PASSED:-0} passed, ${FAILED:-0} failed"
echo "================================"
