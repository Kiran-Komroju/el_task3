# Terraform Docker Container Provisioning

This repository demonstrates how to **provision a local Docker container using Terraform**. The example uses an NGINX container, showing the full Terraform workflow: init, plan, apply, check state, and destroy.

## 📂 Repository Structure

el_task3/

├── main.tf          # Terraform configuration for Docker container
├── init.log         # Terraform init execution log
├── plan.log         # Terraform plan execution log
├── apply.log        # Terraform apply execution log
├── state.log        # Terraform state list log
├── destroy.log      # Terraform destroy execution log
└── README.md        # This file

---

## ⚡ Steps to Run Terraform

1. **Initialize Terraform**
terraform init | tee init.log

2. **Check plan**

terraform plan | tee plan.log

3. **Apply configuration (create container)**

terraform apply -auto-approve | tee apply.log

4. **Verify Terraform state**

terraform state list | tee state.log

5. **Access the container**

* NGINX runs on port `8080`

curl http://localhost:8080

or open in browser: `http://localhost:8080`

6. **Destroy resources (cleanup)**

terraform destroy -auto-approve | tee destroy.log

## ⚙️ Notes

* **Git push from EC2**

  1. Configure Git:

  ```bash
  git config --global user.name "kiran komroju"
  git config --global user.email "komrojukiran@gmail.com"
  ```

  2. Use **Personal Access Token** as password to push the files to repo.

---

## ⚡ Git Commands to Push Changes

```bash
git add main.tf *.log README.md
git commit -m "Add Terraform main.tf and execution logs"
git push origin main
```

---

## 🎯 Summary

This repo demonstrates **infrastructure as code (IaC)** using Terraform to manage local Docker containers. It captures **full lifecycle logs** to make it easy to reproduce the setup and verify Terraform operations.

---

## 🖋 Author

**Kiran Komroju**


Do you want me to create that?
```
