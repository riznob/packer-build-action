# Hello world docker action

This action runs packer build.

## Inputs

### `templateFile`

**Required** Packer template file to use for packer build. Default `"packer-template.json"`.

### `varFile`

**Required** Var file to use for packer build. Default `"packer-vars.json"`.

### `workingDir`

**Required** Directory where the packer template and var file reside. Default `"."`.

## Outputs

## Usage

### YAML style

To configure the action simply add the following lines to your .github/workflows/packer-build.yml workflow file:

```
name: Run packer build on a template file

on:
  push:
    branches:
        - 'master'
jobs:
  packer_build:
    runs-on: ubuntu-latest
    steps:
      - name: Packer build
        uses: riznob/packer-build-action@v1
        with:
          templateFile: 'packer-template.json'
          varFile: 'packer-vars.json'
          workingDir: '.'
        env:
          AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
          AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          AWS_DEFAULT_REGION: us-west-2
```

## Example usage

uses: riznob/packer-build-action@v1
with:
  template-file: 'packer-template.json'
  var-file: 'packer-vars.json'