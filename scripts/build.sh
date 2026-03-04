#!/bin/bash
# Usage: ./scripts/build.sh <project-name>
# Called by agents to build a specific project locally before pushing

PROJECT=$1
if [ -z "$PROJECT" ]; then
  echo "Usage: ./scripts/build.sh <project-name>"
  exit 1
fi

DIR="projects/$PROJECT"
if [ ! -d "$DIR" ]; then
  echo "Project not found: $DIR"
  exit 1
fi

cd "$DIR"
echo "Building $PROJECT..."
npm ci --if-present 2>&1
npm run lint --if-present 2>&1
npm test --if-present 2>&1
npm run build --if-present 2>&1
echo "Build complete: $PROJECT"
