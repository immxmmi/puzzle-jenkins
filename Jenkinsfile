pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Clone the repository
                checkout scm
            }
        }
        stage('Build Docker Image') {
            steps {
                // Build Docker image
                script {
                    docker.build('my-jenkins-docker-project')
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                // Run the Docker container
                script {
                    sh 'docker run -d -p 8080:80 my-jenkins-docker-project'
                }
            }
        }
    }
}
