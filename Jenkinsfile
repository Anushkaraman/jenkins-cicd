pipeline {
    agent any  // Runs on any available agent

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/YOUR_USERNAME/YOUR_REPO.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t my-python-app .'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run --rm my-python-app'
                }
            }
        }
    }
}
