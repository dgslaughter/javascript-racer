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
                    wiwithCredentials([usernamePassword(credentialsId: 'docker hub', passwordVariable: 'docker hubPassword', usernameVariable: 'docker hubUser')]) {
                        sh "docker build -t dgslaughter/racer:latest ."
                        sh "docker push dgslaughter/racer:latest"
                    }
                }
            }
        }
    }
}
