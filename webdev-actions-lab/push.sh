#!/usr/bin/env bash
# ใช้: ./push.sh YOUR_USERNAME
set -e
USER_NAME="${1:?ใส่ GitHub username เช่น ./push.sh octocat}"
git init
git branch -M main
git add .
git commit -m "Create starter website with automatic deployment"
git remote add origin "https://github.com/$USER_NAME/webdev-actions-lab.git"
git push -u origin main
echo "ต่อไป: Settings → Pages → Source = GitHub Actions"
echo "URL: https://$USER_NAME.github.io/webdev-actions-lab/"
