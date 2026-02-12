# Markdown Resume -> PDF

Allows one to build a resume in Markdown ('resume.md') and convert it to a PDF on the fly.

## Bash Script

Bash script allows resume PDF to be built locally.

### Build locally 
Requirements: 
- Pandoc
- Latex (XeLaTeX)

```bash
chmod +x scripts/build.sh
./scripts/build.sh resume.md dist
```

Output: 
dist/resume.pdf

References:
- Pandoc Manual: https://pandoc.org/MANUAL.html?utm_source=chatgpt.com 
- Pandoc Demos: https://pandoc.org/demos.html
- EditorConfig Docs: https://editorconfig-specification.readthedocs.io/

## Github Actions

Actions workflow allows resume PDF to be built and sent to /dist/ upon pull_request or push to 'main'.

References:
Build Data: https://docs.github.com/en/actions/tutorials/store-and-share-data
Upload Artifact: https://docs.github.com/en/actions/tutorials/store-and-share-data



