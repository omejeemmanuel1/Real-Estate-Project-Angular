pipeline {
    agent any
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'cd252021-6408-4797-94a4-f2580fd093b8') {
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
