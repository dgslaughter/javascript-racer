pipeline {
    agent any

    stages {
        stage('SCM') {
            steps {
                git changelog: false, poll: false, url: 'https://github.com/dgslaughter/javascript-racer'
            }
        }
Docker Hub Global
        stage('docker build and push') {
            steps {
                script 
                    {
                      docker.withRegistry( '', 'Docker Hub Global'){
                          sh "docker build -t dgslaughter/racer:latest ."
                          sh "docker push dgslaughter/racer:latest"
                    }
                }    
            }
        }
    }
}
