#!/bin/bash
echo "Building the stage.."
mkdir -p build
echo "Sample artifact" > build/artifact.txt
zip -r build.zip build/
