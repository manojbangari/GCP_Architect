#!/bin/bash

set -e

ROOT="."

echo "Creating Terraform GCP structure..."
echo "Location: $(pwd)"
echo ""

# ============================================
# Create directories
# ============================================

echo "Creating directories..."

mkdir -p "$ROOT/modules"
mkdir -p "$ROOT/environments"
mkdir -p "$ROOT/scripts"

# Modules
mkdir -p \
    "$ROOT/modules/project" \
    "$ROOT/modules/network" \
    "$ROOT/modules/gke" \
    "$ROOT/modules/iam" \
    "$ROOT/modules/artifact-registry" \
    "$ROOT/modules/cloud-sql" \
    "$ROOT/modules/monitoring"

# Environments
mkdir -p \
    "$ROOT/environments/dev" \
    "$ROOT/environments/qa" \
    "$ROOT/environments/uat" \
    "$ROOT/environments/prod"

echo "Directories created."
echo ""

# ============================================
# Create module files
# ============================================

echo "Creating module files..."

for module in project network gke iam artifact-registry cloud-sql monitoring
do
    touch "$ROOT/modules/$module/main.tf"
    touch "$ROOT/modules/$module/variables.tf"
    touch "$ROOT/modules/$module/outputs.tf"
done

# ============================================
# Create environment files
# ============================================

echo "Creating environment files..."

for env in dev qa uat prod
do
    touch "$ROOT/environments/$env/backend.tf"
    touch "$ROOT/environments/$env/provider.tf"
    touch "$ROOT/environments/$env/main.tf"
    touch "$ROOT/environments/$env/variables.tf"
    touch "$ROOT/environments/$env/terraform.tfvars"
    touch "$ROOT/environments/$env/outputs.tf"
done

# ============================================
# Create scripts
# ============================================

echo "Creating scripts..."

touch "$ROOT/scripts/init.sh"
touch "$ROOT/scripts/plan.sh"
touch "$ROOT/scripts/apply.sh"

# ============================================
# Root files
# ============================================

touch "$ROOT/.gitignore"
touch "$ROOT/README.md"

# ============================================
# Gitignore
# ============================================

cat > "$ROOT/.gitignore" <<EOF
# Terraform
.terraform/
.terraform.lock.hcl

# Terraform State
*.tfstate
*.tfstate.*

# Crash logs
crash.log
crash.*.log

# Terraform variable files
*.tfvars
!example.tfvars

# Override files
override.tf
override.tf.json
*_override.tf
*_override.tf.json

# Terraform CLI
.terraformrc
terraform.rc
EOF

# ============================================
# Make scripts executable
# ============================================

chmod +x "$ROOT/scripts/"*.sh

# ============================================
# Display result
# ============================================

echo ""
echo "=============================================="
echo " Terraform GCP structure created successfully"
echo "=============================================="
echo ""

find "$ROOT" -maxdepth 3 -type f | sort

echo ""
echo "Done!"
