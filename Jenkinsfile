pipeline {
    agent any

    stages {
        stage('SCM') {
            steps {
                sh 'echo Performing git pull:'
                git changelog: false, poll: false, url: 'https://github.com/dgslaughter/javascript-racer'
            }
        }
        stage('docker build') {
            steps {
                sh 'echo Running docker build:'
                script 
                    {
                        sh 'echo Nothing here yet!'
                        docker.withRegistry( 'https://hub.docker.com/repository/docker/dgslaughter/racer/', 'DockerGH'){
                        sh "docker build -t dgslaughter/racer:latest ."

                        }
                     }    
                  }
        }
    }
}
