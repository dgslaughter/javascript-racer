node {
    def app
    stage('Docker node test') {
      agent {
        docker {
          // Set both label and image
          label 'docker'
          image 'node:7-alpine'
          args '--name docker-node' // list any args
        }
      }
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
