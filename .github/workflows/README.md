# Workflows for byte-level care

## How to call these from another repository?

You can call any of these workflows that contain `on: workflow_call`.

```
name: "My Workflow"

on:
    push:
        branches:
        - "master"

jobs:
    call_workflow_integrity:
        name: "Integrity"
        uses: "szepeviktor/byte-level-care/.github/workflows/integrity.yml@master"
```
