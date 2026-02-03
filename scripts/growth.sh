#!/bin/bash
# Hivera Growth Workflow
cd "$(dirname "$0")/.."
echo "[$(date)] Starting Growth Cycle"

# 1. Run Research/Update script
node scripts/growth_engine.js

# 2. Add to Git (Simulating Push to Live)
git add data/trending.json
git commit -m "chore: growth engine update $(date +%Y%m%d-%H%M)" || echo "No changes to commit"

# 3. Future expansion: Pull analytics and update earnings.json
# node scripts/analytics_sync.js

echo "[$(date)] Growth Cycle Complete"
