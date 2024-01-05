# ts-container-app
A simple containerized REST API built with TypeScript and Express.

[![CI](https://github.com/ikaromarlon/ts-container-app/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/ikaromarlon/ts-container-app/actions/workflows/main.yml)
[![Coverage Status](https://coveralls.io/repos/github/ikaromarlon/ts-container-app/badge.svg?branch=main)](https://coveralls.io/github/ikaromarlon/ts-container-app?branch=main)

### Pourpose
Build a simple application that will run in a Docker container and be deployed to AWS ECS everytime the *main* branch is updated, using the following CI/CD concepts running on Github Actions:

1. **Test**
   - run unit tests;
2. **Build** 
   - transpile source code (TypeScript) into distribution code (JavaScript);
   - generate artifact (Docker image) containing the distribution code;
3. **Deploy**
   - push the artifact to the Registry (AWS ECR)
   - update the container service (AWS ECS) with the new artifact;

### Infrastructre
Repository: [ts-container-app-infra](https://github.com/ikaromarlon/ts-container-app-infra)

The entire infrastructure is hosted on AWS and created using Terraform.

### Approaches
  - REST API -> Node.js + Express.js
  - Containers -> Docker (using multi-stage builds)
  - CI/CD -> Github Actions
  - IaC -> Terraform
  - Cloud Computing -> AWS

#### Stack
- App
  - [TypeScript](https://www.typescriptlang.org/) / [Node.js](https://nodejs.org/)
  - [Express](https://expressjs.com/)
- Tests
  - [Jest](https://expressjs.com/)
  - [Supertest](https://expressjs.com/)
- Infra
  - [Terraform](https://www.terraform.io/)
  - [AWS ECR](https://aws.amazon.com/ecr/)
  - [AWS ECS](https://aws.amazon.com/ecs/)
- CI/CD
  - [Github Actions](https://github.com/features/actions)