#!/bin/bash
BRANCH=$1
if [ "$BRANCH" == "main" ]; then
  echo "Deploying package..."
  # Simulate deploy
  mv package.tar.gz /tmp/deployed_package.tar.gz
  echo "✅ Deployed successfully!"
else
  echo "Skipping deploy – not on main branch."
fi
