# Kubernetes Setup on AWS EKS

This project demonstrates deploying Kubernetes clusters on **AWS EKS** with autoscaling, monitoring via Prometheus/Grafana, and secure networking policies.

---

### Note
> ⚠️ **This is a demo version** of my original project. Resource names and configurations are generic placeholders (“demo”) to ensure safe public sharing.

---

## Features
- AWS EKS cluster provisioning
- Managed node groups with autoscaling
- Prometheus monitoring
- Grafana dashboards
- Kubernetes Network Policies
- CI/CD integration

---

## Architecture Diagram

```mermaid
graph TD
    A[AWS EKS Cluster] --> B[Node Group AutoScaling]
    A --> C[Prometheus Monitoring]
    A --> D[Grafana Dashboard]
    A --> E[Demo App Deployment]
    E --> F[Network Policies]


Project Structure

kubernetes-setup/
│── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── provider.tf
│   ├── backend.tf
│   ├── terraform.tfvars
│── k8s-manifests/
│   ├── deployment.yaml
│   ├── service.yaml
│   ├── network-policy.yaml
│   ├── prometheus/
│   └── grafana/
│── README.md
│── .gitignore

Getting Started

1. Prerequisites

AWS CLI with credentials
Terraform v1.x
kubectl installed
eksctl installed

2. Setup
git clone https://github.com/<your-username>/kubernetes-setup.git
cd kubernetes-setup/terraform
terraform init
terraform apply -auto-approve

3. Deploy Kubernetes Resources
kubectl apply -f ../k8s-manifests/


Learning Objectives

Deploy EKS clusters via Terraform
Implement autoscaling for node groups
Secure workloads with network policies
Setup Prometheus/Grafana monitoring
Deploy containerized applications