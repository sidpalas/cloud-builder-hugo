Docker Image used to build hugo site within Cloud Build pipeline.

### Based on:
https://github.com/GoogleCloudPlatform/cloud-builders-community/tree/master/hugo

Arguments passed to this builder will be passed to hugo directly, allowing callers to run any Hugo command.

### Usage:
To generate a static web-site from its sources:

```
steps:
- name: sidpalas/cloud-builder-hugo
```