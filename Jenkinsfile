pipeline {
    agent { docker 'public.ecr.aws/docker/library/golang:latest' }
    environment {
      GOCACHE = "${env.WORKSPACE}/.build_cache"
    }
    options {
        buildDiscarder(logRotator(daysToKeepStr: '10', numToKeepStr: '10'))
        timeout(time: 1, unit: 'HOURS')
        timestamps()
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
                sh "docker build -t racer ."
            }
        }
        stage('Push') {
            steps {
                sh 'push.sh'
            }
        }
    }
}
