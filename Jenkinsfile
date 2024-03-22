node {
    def app
    stage ('Clone and Build') {
        checkout scm
        app=docker.build("dgslaughter/racer")
    }
    stage ('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'dockerHub') {
            app.push("latest")
        }
    }
}
