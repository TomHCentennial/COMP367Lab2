pipeline {
    agent any

    tools {
        maven 'Maven'  // Use the Maven tool configured in Jenkins
    }

    environment {
        DOCKER_HUB_CREDENTIALS = credentials('d0ed6c0f-2469-4c86-9453-9a5ff2ad2047')  // Replace with your Jenkins credentials ID
        DOCKER_IMAGE = 'tomhcent/comp367app'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/TomHCentennial/COMP367Lab2'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Docker Login') {
            steps {
                sh 'echo $DOCKER_HUB_CREDENTIALS_PSW | docker login -u $DOCKER_HUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }
        stage('Docker Push') {
            steps {
                sh 'docker push $DOCKER_IMAGE'
            }
        }
    }
}
