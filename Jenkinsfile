pipeline {
    agent any

    triggers {
        // Poll the Git repository every minute (you can adjust the frequency)
        pollSCM('* * * * *')
    }

    stages {
        stage('Clone Repository') {
            steps {
                // Clone the repository
                git branch: 'main', url: 'https://https://github.com/deliyagimz/my_first_web.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker image
                    sh 'docker build -t my-website-image  .'
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    // Push Docker image to a Docker registry
                    sh 'docker push my-website-image '
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Commands to deploy your Docker container
                    sh 'docker run -d -p 8081:80 my-website-image '
                }
            }
        }
    }

    post {
        success {
            echo 'Deployment was successful!'
        }
        failure {
            echo 'Deployment failed!'
        }
    }
}
