pipeline {
    agent any

    environment {
        DOCKER_IMAGE_NAME = "petclinic"
        //DOCKER_REGISTRY = "https://registry.example.com"
        //DOCKER_CREDENTIALS = credentials('docker-registry-credentials')
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/danedngn/petclinic-pipeline-test.git'
            }
        }

        stage('Build') {
            steps {
                sh './mvnw package'
            }
        }

        stage('Test') {
            steps {
                sh './mvnw test'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    //docker.withRegistry("${DOCKER_REGISTRY}", "${DOCKER_CREDENTIALS}") {
                        def app = docker.build("${DOCKER_IMAGE_NAME}:${env.BUILD_NUMBER}", ".")
                        //app.push()
                }
            }
        }
    }
}