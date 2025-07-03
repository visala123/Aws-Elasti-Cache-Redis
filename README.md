#  AWS ElastiCache (Redis) Deployment with Terraform

This project provisions an **AWS ElastiCache Redis cluster** using **Terraform**. It uses **GitHub Actions** for CI/CD automation and separates configuration using `terraform.tfvars`.

---

##  Features

- Creates a Redis cluster using `aws_elasticache_cluster`
- Passes all variables through `terraform.tfvars`
- CI/CD pipeline using GitHub Actions
- Optional S3 remote backend support
- Resources created in ap-northeast-2

---

##  Project Structure
```
elasticache-redis/
├── backend.tf # Optional S3 remote state config
├── main.tf # Core resource definition
├── variables.tf # Variable definitions
├── terraform.tfvars # Values for variables
├── output.tf # Outputs like Redis endpoint
├── provider.tf # AWS provider config
├── .gitignore
└── .github/
└── workflows/
└── deploy.yml # GitHub Actions pipeline
```

---

##  Prerequisites

- AWS Account
- Terraform CLI (>= 1.0)
- GitHub repository with configured secrets
-  S3 bucket for remote state

---

##  GitHub Secrets Setup

Configure the following secrets in your repository:

| Secret Name             | Description                              |
|-------------------------|------------------------------------------|
| `AWS_ACCESS_KEY_ID`     | IAM access key with ElastiCache rights   |
| `AWS_SECRET_ACCESS_KEY` | IAM secret key                           |

Add via:  
`GitHub Repo → Settings → Secrets and Variables → Actions → New repository secret`

---

##  Cleanup
```
terminal
terraform init
terraform destroy 
```
---

## Note 
    For testing purpose you can remove the backend.tf file and cleanup the resources manually.

## References

   Terraform AWS Provider Docs

   Amazon RDS Documentation

