pipeline {
    agent any

    stages {
        stage('SCM') {
            steps {
                git changelog: false, poll: false, url: 'https://github.com/dgslaughter/javascript-racer'
            }
        }
        stage('docker build and push') {
            steps {
                script 
                    {
                      docker.withRegistry( 'https://registry.docker.com/repositories/dgslaughter', 'DockerGH'){
                          sh "docker build -t dgslaughter/racer:latest ."
                          sh "docker push dgslaughter/racer:latest"
                    }
                }    
            }
        }
    }
}
