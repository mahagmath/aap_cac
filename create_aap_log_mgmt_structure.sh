#!/bin/bash

# Base directory
BASE_DIR="aap_log_management/compliance_project"

# Inventory environments
ENVIRONMENTS=("dev1" "test1")
PROD_INVENTORY_FILES=("prod_mil_inventory.yml" "prod_wa_inventory.yml")

# Create base directories
mkdir -p "${BASE_DIR}/inventories"
mkdir -p "${BASE_DIR}/playbooks"
mkdir -p "${BASE_DIR}/roles/role1"
mkdir -p "${BASE_DIR}/roles/role2"

# Create environment inventory directories
for ENV in "${ENVIRONMENTS[@]}"; do
    mkdir -p "${BASE_DIR}/inventories/${ENV}/group_vars"
    mkdir -p "${BASE_DIR}/inventories/${ENV}/host_vars"
    touch "${BASE_DIR}/inventories/${ENV}/inventory.yml"
done
# Create production inventory structure
mkdir -p "${BASE_DIR}/inventories/production/group_vars"
mkdir -p "${BASE_DIR}/inventories/production/host_vars"
for FILE in "${PROD_INVENTORY_FILES[@]}"; do
    touch "${BASE_DIR}/inventories/production/${FILE}"
done

# Create playbooks
touch "${BASE_DIR}/playbooks/dev_playbook.yml"
touch "${BASE_DIR}/playbooks/test_playbook.yml"
touch "${BASE_DIR}/playbooks/prod_playbook.yml"

# Create README
cat > "${BASE_DIR}/README.md" <<EOF
# Compliance Project

This Ansible Automation Platform (AAP) project manages log compliance deployments across different environments:
- **dev1**
- **test1**
- **production (prod_mil and prod_wa)**

Each environment has its own inventories, variables, and associated playbooks.
Roles are reusable and stored in the \`roles/\` directory.

## Directory Structure
\`\`\`
$(tree aap_log_management)
\`\`\`
EOF

echo "AAP Log Management structure created successfully."

