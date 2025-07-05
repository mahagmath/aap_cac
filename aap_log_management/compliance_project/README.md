# Compliance Project

This Ansible Automation Platform (AAP) project manages log compliance deployments across different environments:
- **dev1**
- **test1**
- **production (prod_mil and prod_wa)**

Each environment has its own inventories, variables, and associated playbooks.
Roles are reusable and stored in the `roles/` directory.

## Directory Structure
```

``
# Log Management App - Compliance Project

## Overview

This project contains the configuration and playbooks for managing the `Log Management App` in different environments: Dev, Test, and Production.

### Inventories

- **Dev1**: Inventory for the development environment.
- **Test1**: Inventory for the testing environment.
- **Production**: Inventory for the production environment.
  - `Prod_Mil` and `Prod_WA` are two separate production regions with specific host groupings.

### Host Groups

- **OpenSearch Hosts**:
  - `coordinating`: Coordinating nodes
  - `master`: Master nodes
  - `default`: Default nodes
  - `data`: Data nodes

- **Logstash Hosts**:
  - `consumers`: Consumer nodes
  - `producers`: Producer nodes

- **Dashboard Hosts**: Hosts running the dashboard service.

### Playbooks

- **Dev Playbook**: `dev_playbook.yml` - Playbook for the development environment.
- **Test Playbook**: `test_playbook.yml` - Playbook for the testing environment.
- **Prod Playbook**: `prod_playbook.yml` - Playbook for the production environment.

### Roles

- **Role1**: Role to ensure OpenSearch is installed and configured.
- **Role2**: Role to ensure Logstash is configured and running.
`
