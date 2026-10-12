#!/usr/bin/env bash
# Re-download the resume PDF from the shared Google Doc and push it.
# Run this any time you edit the doc: ./scripts/update-resume.sh
set -euo pipefail
cd "$(dirname "$0")/.."

DOC_ID="1CnJ8_JmKHVF-PtzASgPo_bGzan39WA038SsrQwZivNw"
curl -fsSL "https://docs.google.com/document/d/${DOC_ID}/export?format=pdf" -o static/resume.pdf

file static/resume.pdf | grep -q 'PDF document' || {
    echo "error: download is not a PDF — check the doc's link sharing is on" >&2
    exit 1
}
echo "downloaded: $(file static/resume.pdf | sed 's/.*: //')"

git add static/resume.pdf
git diff --cached --quiet && echo "resume unchanged — nothing to push" && exit 0
git commit -m "update resume pdf ($(date +%Y-%m-%d))"
git push origin HEAD
echo "pushed — Cloudflare Pages will deploy in a minute or two"
