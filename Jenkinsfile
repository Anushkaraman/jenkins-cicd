pipeline {
    agent any  // Runs on any available agent

    environment {
        GIT_CREDENTIALS_ID = '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'  // Ensure this matches your saved credential ID
        GIT_REPO_URL = 'https://github.com/Anushkaraman/jenkins-cicd.git'
        BRANCH_NAME = 'main'
        DOCKER_IMAGE_NAME = 'my-python-app'
    }

    stages {
        stage('Checkout Repository') {
            steps {
                script {
                    echo "Cloning repository from ${GIT_REPO_URL} on branch ${BRANCH_NAME}"
                }
                git credentialsId: GIT_CREDENTIALS_ID, branch: BRANCH_NAME, url: GIT_REPO_URL
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    echo "Building Docker image..."
                    sh "docker build -t ${DOCKER_IMAGE_NAME} ."
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    echo "Running Docker container..."
                    sh "docker run --rm ${DOCKER_IMAGE_NAME}"
                }
            }
        }
    }

    post {
        success {
            echo "Pipeline completed successfully! ✅"
        }
        failure {
            echo "Pipeline failed! ❌ Check logs for details."
        }
    }
}
