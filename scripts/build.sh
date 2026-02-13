#!/usr/bin/env bash
set -euo pipefail

SRC="${1:-resume/job-position/resume.md}"
OUTDIR="${2:-dist}"

OUTPDF="${OUTDIR}/$(basename "$SRC" .md).pdf"

mkdir -p "$OUTDIR"

pandoc -s "$SRC" \
  -o "$OUTPDF" \
  --pdf-engine=xelatex \
  -V geometry: "left=3cm,right=3cm,top=2cm,bottom=2cm" \
  -V fontsize=10pt \
  -V mainfont="DejaVu Serif"

echo "Built: $OUTPDF"