# Infrastructure Provisioning with Terraform and AWS

## Overview
This project provisions a 3-tier architecture on AWS using Terraform and configures services using Ansible.

- **VPC** with public and private subnets
- **Internet Gateway** (optional, based on configuration)
- **Security Groups** for SSH, HTTP, and DB access
- **EC2 Instances**:
  - Web Server (Amazon Linux)
  - DB Server (MariaDB)
- **Provisioning**:
  - Infrastructure: **Terraform**
  - Configuration: **Ansible** 