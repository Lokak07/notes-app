pipeline {
    agent any

    stages {
        stage('SCM') {
            steps {
                git branch: '2nd', url: 'https://github.com/Lokak07/notes-app.git'
            }
        }
        
        stage('docker build') {
            steps {
                withDockerRegistry(credentialsId: 'DOCKER_ID') {
                script {
                  sh "docker build -t loka07/notes:v1"  
                }
}
                
            }
                
            }
            
        stage('dello') {
            steps {
                echo 'Hello World'
            }
        }
        
        }
        
    }

