# Packer build action

This action runs packer build. Forked from https://github.com/riznob/packer-build-action

## Inputs

### `templateFile`

**Optional** Packer template file to use for packer build. Default `"packer-template.json"`.

### `varFile`

**Optional** Var file to use for packer build. Default `"packer-vars.json"`.

### `workingDir`

**Optional** Directory where the packer template and var file reside. Default `"."`.

## Outputs

## Example usage

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
      - uses: actions/checkout@v1
      - name: Packer build
        uses: riznob/packer-build-action@v1.1
        with:
          templateFile: 'packer-template.json'
          varFile: 'packer-vars.json'
          workingDir: '.'
        env:
          AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
          AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          AWS_DEFAULT_REGION: us-west-2
```
