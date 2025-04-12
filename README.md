# 🚀 CI/CD Docker Web App with GitHub Actions & AWS EC2

This project demonstrates a real-world continuous deployment pipeline using GitHub Actions, Docker, and an AWS EC2 instance. Every push to the `main` branch triggers a GitHub Actions workflow that builds the app into a Docker container and automatically deploys it to a live EC2 server.

---

## 🌍 Live Demo
**URL:** [http://<your-ec2-ip>](http://<your-ec2-ip>)

> Pro tip: Replace `<your-ec2-ip>` with your actual IP address or DNS for clarity!

---

## 🔧 Tech Stack

| Layer            | Tool                  |
|------------------|-----------------------|
| Frontend         | Node.js HTTP server   |
| Containerization | Docker                |
| Reverse Proxy    | NGINX                 |
| CI/CD Pipeline   | GitHub Actions        |
| Cloud Hosting    | AWS EC2 (Ubuntu)      |
| Deployment       | SSH with secrets      |

---

## 📦 Project Structure

. ├── server.js # Simple Node.js server 
  ├── Dockerfile # Docker container config (Node + NGINX) 
  ├── nginx/ 
  │ └── nginx.conf # Reverse proxy config 
  ├── .github/ 
  │ └── workflows/ 
  │ └── deploy.yml # GitHub Actions CI/CD pipeline 
  ├── start.sh # Entry point to launch NGINX + Node 
  └── README.md

  
---

## 🤖 CI/CD Workflow

1. Developer pushes code to `main` branch
2. GitHub Actions is triggered:
   - Builds Docker image
   - SSHes into EC2 instance
   - Stops existing container
   - Rebuilds and runs new container
3. EC2 hosts the app on port 80 via NGINX

---

## 🔐 GitHub Secrets Required

| Secret Name | Description |
|-------------|-------------|
| `HOST`      | Public IP or DNS of your EC2 instance |
| `USERNAME`  | SSH login user (typically `ubuntu`) |
| `SSH_KEY`   | Private SSH key (entire `.pem` file content) |

---

## 📂 Deployment Guide

### 💻 Clone the Repo

```bash
git clone https://github.com/YOUR-USERNAME/ci-cd-webapp.git
cd ci-cd-webapp


🔧 Customize It
Add your own server.js logic

Update nginx.conf for other routes/domains

🚀 Push to Deploy
git add .
git commit -m "Update"
git push origin main

The app will automatically rebuild and deploy!


🎓 Author
Brandon Lester

YouTube: Brandevops

LinkedIn: Brandon Lester



