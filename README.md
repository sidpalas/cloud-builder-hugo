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

**NOTE:** The other way of handling this is to build the `cloud-builders-community` and push it to the google container registry for the project it is being used it. This would be accomplished by cloning the [cloud-builders-community repo](https://github.com/GoogleCloudPlatform/cloud-builders-community) navigating to the hugo directory (`cd cloud-builders-community/hugo`) and then running the `gcloud build submit` (which uses the provided `cloudbuild.yaml` pipeline to build and push the image)