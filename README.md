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

### Step 2 – Local Postgres Container (Completed)

- Used Podman as a Docker-compatible container engine on my local Linux system.
- Pulled the official `postgres` image from Docker Hub.
- Started a Postgres container (`devops-postgres`) with:
  - Custom database name, user, and password via environment variables (`POSTGRES_DB`, `POSTGRES_USER`, `POSTGRES_PASSWORD`).
  - Port mapping from host `5432` to container `5432` for local access.
- Connected to the running Postgres instance using `psql` inside the container.
- Created a sample `notes` table, inserted test data, and verified queries.
- Configured a host directory (`/home/raj/Work/pgdata`) as a volume so database data persists even if the container is stopped and recreated.
- Ran commands/scripts from the host that execute SQL against the Postgres container, simulating a simple “app → database container” flow.

