# Workflows for byte-level care

## How to call these from another repository?

You can call any of these workflows that contain `on: workflow_call`.

```yaml
name: "My Workflow"

on:
    push:
        branches:
        - "master"

jobs:
    call_workflow_integrity:
        name: "Integrity"
        uses: "szepeviktor/byte-level-care/.github/workflows/reusable-integrity.yml@master"
```

## List of all jobs

`yq '"- " + ."name" + " / " + ."jobs"[]."name"'`

- Actions / Job count
- Actions / Actionlint
- Back-end / 1️⃣ Syntax errors
- Back-end / 2️⃣ Unit and functional tests
- Back-end / 3️⃣ Static Analysis
- Back-end / 4️⃣ Coding Standards
- Dockerfile / 🐳 Hadolint
- Docs / Markdown format
- Docs / Markdown link
- Front-end / 𝟏 JavaScript Syntax Errors
- Front-end / 𝟐 JavaScript Coding Standards
- Front-end / 𝟑 Sassy CSS Coding Standards
- Front-end / 𝟒 Build
- Front-end / 𝟓 SVG validity
- Git commits / Commit author
- Git tags / Tag without new commit
- Integrity / Integrity
- Outdated packages / PHP packages
- Outdated packages / Node.js packages
- Shared Integrity / File
- Shared Integrity / Lines of Code
- Shared Integrity / Commit
- Shared Integrity / Git archive
- Shell script / ShellCheck
- Spelling / 文A Typos
- YAML / YAML validity
