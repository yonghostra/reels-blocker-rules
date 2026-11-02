#!/bin/sh
# Push the current hiding rules + pages to GitHub Pages. Run after editing Extension/Resources/rules.json.
set -e
cd "$(dirname "$0")"
cp ../Extension/Resources/rules.json rules.json
git add -A && git commit -m "Update rules $(date +%F)" && git push
echo "Live in ~1 min: https://yonghostra.github.io/reels-blocker-rules/rules.json"
