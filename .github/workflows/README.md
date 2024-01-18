# Workflows for byte-level care

## How to call these from another repository?

You can call any of these workflows that contain [`on: workflow_call`][search-workflow-call].

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

[search-workflow-call]: https://github.com/search?q=repo%3Aszepeviktor%2Fbyte-level-care+workflow_call+language%3AYAML&type=code&l=YAML

## List of all jobs

`yq '"- " + ."name" + " / " + ."jobs"[]."name"'`

- Back-end / 1️⃣ Syntax errors
- Back-end / 2️⃣ Unit and functional tests
- Back-end / 3️⃣ Static Analysis
- Back-end / 4️⃣ Coding Standards
- Dockerfile / 🐳 Hadolint
- Front-end / 𝟏 JavaScript Syntax Errors
- Front-end / 𝟐 JavaScript Coding Standards
- Front-end / 𝟑 Sassy CSS Coding Standards
- Front-end / 𝟒 SVG validity
- Front-end / 𝟓 Build
- Git commits / Commit author
- Git tags / Tag without new commit
- Integrity / Integrity
- Markdown / Markdown format
- Markdown / Links
- Outdated packages / PHP packages
- Outdated packages / Node.js packages
- Outdated packages / AlDanial/cloc
- Shared Integrity / File
- Shared Integrity / Lines of Code
- Shared Integrity / Commit
- Shared Integrity / Git archive
- Shell script / ShellCheck
- Spelling / 文A Typos
- Sphinx / Sphinx reStructuredText validity
- Workflow / Job count
- Workflow / Run context
- Workflow / Actionlint
- YAML / YAML validity
