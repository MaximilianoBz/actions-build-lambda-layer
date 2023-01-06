# Build Lambda Layer

This action deploys AWS CloudFormation Stacks through yml files.

## Usage

```yml
name: "Build Lambda Layer"
on: 
  push:
    branches:
    - master

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - uses: maximilianobz/actions-build-lambda-layer@v1.0.0
```

### License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).

