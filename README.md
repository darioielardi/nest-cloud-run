# NestJS Cloud Run Starter

NestJS starter with docker setup ( `Dockerfile` & `.dockerignore` ) for automated deploy on Google Cloud Run with Cloud Build with push trigger.

## Running locally

```bash
# development
$ npm run start

# watch mode
$ npm run start:dev

# production mode
$ npm run start:prod
```

## Test

```bash
# unit tests
$ npm run test

# e2e tests
$ npm run test:e2e

# test coverage
$ npm run test:cov
```

## Deploy

[Configure](https://cloud.google.com/run/docs/setup) the Google Cloud SDK, [build and push](https://cloud.google.com/run/docs/building/containers) the first image version to Google Container Registry either locally with docker or with Cloud Build, then [deploy](https://cloud.google.com/run/docs/deploying#service) the first revision to Cloud Run.
Every subsequential build can be automated on new push on a given branch, the `cloudbuild.yaml` file is already in place but the [other setup steps](https://cloud.google.com/run/docs/continuous-deployment) need to be done manually.
