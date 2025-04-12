# CI/CD Docker Web App Deployment

This project demonstrates a full CI/CD pipeline using GitHub Actions, Docker, and an AWS EC2 instance. On every push to the `main` branch, the pipeline builds a Docker image and deploys it to a live EC2 server via SSH.

## 🌐 Live Demo
Visit: `http://3.144.34.194`

## 🔧 Technologies Used
- Node.js
- Docker
- GitHub Actions
- AWS EC2 (Ubuntu)
- Git
- SSH Deployment

## 🧱 Project Structure
. ├── server.js # Simple Node.js web server 
  ├── Dockerfile # Container config 
  ├── .github/ 
  │ └── workflows/ 
  │ └── deploy.yml # GitHub Actions workflow └── README.md

## 🚀 CI/CD Workflow Overview
1. Code is pushed to `main`
2. GitHub Actions triggers a workflow
3. Workflow:
   - Builds the Docker image
   - SSHs into EC2 instance
   - Stops any existing container
   - Rebuilds and runs the new container
4. App is served live at the EC2 public IP on port 80

## 🔐 Secrets Configured in GitHub
- `HOST`: Public IP of your EC2 instance
- `USERNAME`: SSH user (e.g., `ubuntu`)
- `SSH_KEY`: Private key content for SSH access

## 📦 How to Deploy
1. Clone this repo:
```bash
git clone https://github.com/branDevSecOps/ci-cd-webapp.git


Set up your EC2 instance (see instructions in this repo or your notes)

Push to main to deploy.

Made with ❤️ by Brandon Lester
Check out my YouTube channel: https://www.youtube.com/@brandevops

