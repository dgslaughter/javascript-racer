pipeline {
    agent { dockerfile true }
    environment {
      DOCKER = credentials("dockerHub")
    }
    stages {
        stage('Source') {
            steps {
                sh 'which go'
                sh 'go version'
                git branch: 'latest',
                    url: 'https://github.com/dgslaughter/javascript-racer'
            }
        }
        stage('Build') {
            steps {
      steps {
        container('docker') {
          sh("docker login -u $DOCKER_USR -p $DOCKER_PSW")
          sh("docker build -t $DOCKER_USR/racer .")

        }
      }
            }
        }
        stage('Push') {
            steps {
              sh("docker push $DOCKER_USR/racer")     
            }
        }
    }
}
