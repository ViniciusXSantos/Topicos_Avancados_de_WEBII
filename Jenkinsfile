pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Clonar o repositório
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('hello-world')
                }
            }
        }

        stage('Run Tests') {
            steps {
                sh '''
                docker run --rm -v $(pwd):/app -w /app hello-world pytest test_app.py
                '''
            }
        }
    }
}
