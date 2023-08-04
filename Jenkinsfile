pipeline {
    agent any
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://registry.example.com', 'your-docker-credentials-id') {
                        def customImage = docker.build("omejeemmanuel1/angular-app:${env.BUILD_NUMBER}")
                    }
                }
            }
        }
        
        stage('Run Docker Container') {
            steps {
                script {
                    docker.image("omejeemmanuel1/angular-app:${env.BUILD_NUMBER}").withRun('-p 8080:80') {
                        // Additional steps to run tests, deploy, etc.
                    }
                }
            }
        }
    }
}
