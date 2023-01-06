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
      env:
        TEMPLATE: 'template.yml'
        TEMPLATEOUTPUT: 'template-output.yml'

```

### Environment Variables

* `TEMPLATE` - [Optional]. YML file containing CloudFormation Stack.
  * Type: `string`
  * Default: `template.yml`
* `TEMPLATEOUTPUT` - [Optional]. YML file containing SAM template.
  * Type: `string`



### License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).

