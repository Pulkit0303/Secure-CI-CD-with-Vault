# 🔐 Vault-Integrated CI/CD Pipeline with Jenkins

This project demonstrates how to securely manage secrets in a CI/CD pipeline by integrating **HashiCorp Vault** with **Jenkins**. Instead of hardcoding AWS credentials in pipeline scripts, this setup uses Vault to fetch secrets dynamically and uploads files to an AWS S3 bucket.

---

## 📌 Why Use Vault?

Traditionally, secrets like API keys, AWS access keys, and tokens are hardcoded in CI/CD scripts or stored in version control, which is insecure and error-prone.  
**HashiCorp Vault** solves this problem by:

- Providing **centralized secret storage**.
- Allowing **dynamic secret generation**.
- Enforcing **fine-grained access control** via policies and authentication methods.

---

## ✅ Project Goals

- Understand the purpose and working of Vault in real-world DevOps workflows.
- Eliminate hardcoded secrets from Jenkins pipeline scripts.
- Use Vault’s AppRole authentication to retrieve AWS credentials.
- Upload files to an S3 bucket securely using credentials fetched from Vault.

---

## 🧱 Project Structure

| Branch             | Purpose                                              |
|--------------------|------------------------------------------------------|
| `infra-setup`      | Automates Vault installation and configuration on EC2 |
| `s3-upload-pipeline` | Implements Jenkins pipeline for secure S3 upload     |

---

## 🧠 Advantages of Using Vault

- 🔒 **Security**: Secrets are not stored in Jenkinsfiles or code.
- 🔁 **Dynamic Secrets**: Temporary credentials reduce long-term risk.
- 👤 **Access Control**: Vault policies define who can access what.
- 📜 **Auditing**: Vault logs all access to secrets.
- 🔄 **Scalability**: Works well with large teams and multiple environments.

---

## 🛠️ Tech Stack

- **Jenkins**
- **HashiCorp Vault** (AppRole auth)
- **AWS EC2** (for hosting Vault & Jenkins)
- **AWS S3** (file storage)
- **AWS IAM** (Roles)
- **Terraform** (optional, for infra automation)
- **Shell Scripting**

---

## 🚧 Current Status

- Vault is being installed and configured on EC2 with UI enabled.
- Jenkins will use Vault AppRole auth to fetch AWS credentials.
- Files will be uploaded securely to S3 as part of the pipeline.
