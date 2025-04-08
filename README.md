# Node.js Application Deployment using Jenkins and Docker

## Overview

This project demonstrates the CI/CD pipeline setup for a Node.js application using Jenkins and Docker. The main goal is to automate the entire build, push, and deployment process with every code change.

---

## Steps Involved

1. **Jenkins Setup:**
   - Installed Jenkins on an EC2 instance.
   - Installed necessary plugins (Git, Docker, Pipeline).
   - Created credentials for Docker Hub.

2. **Project Setup:**
   - Cloned a simple Node.js application from GitHub.
   - Wrote a Dockerfile to containerize the application.
   - Created a Jenkinsfile to automate the pipeline.

3. **Pipeline Configuration:**
   - Stage 1: Clone the repository from GitHub.
   - Stage 2: Build a Docker image from the application code.
   - Stage 3: Login to Docker Hub using Jenkins credentials.
   - Stage 4: Push the Docker image to Docker Hub.
   - Stage 5: Remove old container (if exists) and run the latest one.

4. **Docker Hub:**
   - Docker image is pushed to my public Docker Hub repository.

5. **Final Output:**
   - Once deployed, the application is accessible on port 3000 of the EC2 instance.

---

## Prerequisites

- Jenkins installed and running
- Docker installed and running
- Docker Hub account
- GitHub repository with Node.js app

---

## Purpose

This project was done to understand and practice the complete CI/CD lifecycle using Jenkins, Docker, and GitHub. It automates app deployment to ensure that every code change results in an updated and live application container.

