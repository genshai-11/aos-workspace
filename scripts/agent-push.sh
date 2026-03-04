#!/bin/bash
# Usage: ./scripts/agent-push.sh <agent-name> <message>
# Creates a branch, commits, pushes, and optionally creates PR

AGENT=$1
MESSAGE=$2
if [ -z "$AGENT" ] || [ -z "$MESSAGE" ]; then
  echo "Usage: ./scripts/agent-push.sh <agent-name> <commit-message>"
  exit 1
fi

BRANCH="agent/${AGENT}/$(date +%Y%m%d-%H%M%S)"
git checkout -b "$BRANCH"
git add -A
git commit -m "$MESSAGE

Co-Authored-By: AOS Agent ($AGENT) <agents-noreply@genshai.dev>"
git push -u origin "$BRANCH"

echo "Branch pushed: $BRANCH"
echo "Create PR with: gh pr create --title '$MESSAGE' --body 'Agent: $AGENT'"
