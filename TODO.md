# GitHub Actions for Docker & Helm Chart Deployment

This repository contains GitHub Actions workflows to build, test, and deploy Docker images and Helm charts to the GitHub registry.

## Workflow Overview

- [x] **GitHub CI**: Build and test the Docker image.
- [x] **Validate Helm Chart**: Ensure the Helm chart is correct and follows best practices.
- [ ] **Package and Push Helm Chart**: Package the Helm chart and push it to the GitHub registry.

## Steps for Deployment

1. **CI for Docker Image**: The workflow builds and tests the Docker image for the project.
2. **Helm Chart Validation**: Validates the Helm chart for correctness and structure.
3. **Helm Chart Packaging & Deployment**: The next step will package and deploy the Helm chart to the GitHub registry.

