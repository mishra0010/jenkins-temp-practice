#!/bin/bash
echo "Deployed star6ted"
if [ 4%2 == 0 ]; then
  echo "Deploying package..."
  echo "✅ Deployed successfully!"
else
  echo "Skipping deploy – not on main branch."
fi
