node {
    def app
    agent {
      docker { image 'node:20.11.1-alpine3.19' }
    }
    stage ('Clone Repo') {
        checkout scm
    }
    stage ('Build') {
        app=docker.build("dgslaughter/racer")
    }
    stage ('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'dockerHub') {
            app.push("latest")
        }
    }
}
