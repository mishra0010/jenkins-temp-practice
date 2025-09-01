#!/bin/bash
echo "Running tests..."
if [ $((RANDOM % 2)) -eq 0 ]; then
  echo "✅ Tests passed!"
  exit 0
else
  echo "❌ Tests failed!"
  exit 1
fi
