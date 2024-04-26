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
                script {
                    withDockerRegistry(credentialsId: '5c578cd3-a9f3-45be-916b-95afc91bc316', toolName: 'Docker') {
                        sh "docker build -t dgslaughter/racer:latest ."
                        sh "docker push dgslaughter/racer:latest"
                    }
                }
            }
        }
    }
}
