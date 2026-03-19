# Multi-Cloud Hybrid Lab (Week 11)

## Overview
This project demonstrates a hybrid multi-cloud setup using OpenStack and AWS.

## Components

### OpenStack (MicroStack)
- Created private network and subnet
- Launched VM instances
- Assigned floating IP

### Terraform
- Automated deployment of 2 VM instances
- Used OpenStack provider

### AWS S3
- Created S3 bucket
- Used for cloud storage

### rclone
- Synced data between:
  - Local machine
  - AWS S3
  - Local backup

## Architecture
User → OpenStack → Terraform → VMs → AWS S3 → Local Backup

## Key Commands

### OpenStack
microstack.openstack server list


### Terraform

terraform init
terraform apply


### rclone

rclone copy ~/data aws-storage:bucket-name
rclone sync ~/data localbackup:/home/user/backup


## Outcome
- Multi-cloud environment created
- Infrastructure automated
- Data synchronization implemented
