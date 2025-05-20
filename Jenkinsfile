pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'app'
        IMAGE_TAG = 'latest'
    }

    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${DOCKER_IMAGE}:${IMAGE_TAG}")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh "docker run -d --name temp_container ${DOCKER_IMAGE}:${IMAGE_TAG}"
                }
            }
        }


        
    }

    post {
        always {
            echo 'Pipeline completed.'
        }
    }
}
