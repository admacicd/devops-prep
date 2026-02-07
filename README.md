# DevOps Prep - Client Interview

This repository is for my practical learning:
- Git & GitHub basics
- Azure DevOps YAML pipelines
- Kubernetes (Minikube)
- Helm charts
- Terraform (Azure IaC)
- Postgres + SQL

All work done on my personal Linux system as real hands-on practice.

## Progress Tracker

### Step 1 – Azure DevOps + YAML (Completed)

- Created Azure DevOps organization `admacicd-devops` and project `devops-prep`.
- Connected the Azure DevOps project to this GitHub repository.
- Set up a self-hosted Linux build agent in the `Default` agent pool.
- Created an `azure-pipelines.yml` CI pipeline that:
  - Triggers automatically on pushes to the `main` branch.
  - Uses the self-hosted agent via the `Default` pool.
  - Defines reusable variables like `appName` and `buildConfiguration`.
  - Runs separate build and test steps (currently simulated with scripts - echo statements only).
