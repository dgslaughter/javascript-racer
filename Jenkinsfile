node {
    agent any
    
    def app
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
