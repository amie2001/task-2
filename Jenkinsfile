pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "pavi2244/node-hello"
    }

    stages {
        stage('Clone Repo') {
            steps {
                echo "Cloning Repository..."
                // Jenkins already pulls the repo; this is just for logging
            }
        }

        stage('Build Docker Image') {
            steps {
                echo "Building Docker Image..."
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }

        stage('Login to Docker Hub') {
            steps {
                echo "Logging in to Docker Hub..."
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub-creds',
                    usernameVariable: 'DOCKER_USER',
                    passwordVariable: 'DOCKER_PASS'
                )]) {
                    sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                echo "Pushing Docker Image..."
                sh 'docker push $DOCKER_IMAGE'
            }
        }

        stage('Deploy Container') {
            steps {
                echo "Deploying Application..."
                sh 'docker rm -f node-hello || true'
                sh 'docker run -d --name node-hello -p 3000:3000 $DOCKER_IMAGE'
            }
        }
    }

    post {
        success {
            echo "🚀 Deployment successful!"
        }
        failure {
            echo "❌ Deployment failed!"
        }
    }
}
