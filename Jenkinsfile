node {
    def app
    stage ('Clone and Build') {
        checkout scm
        app=docker.build("racer")
        docker.tag app:javascript-racer app:racer
    }
    stage ('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'dockerHub') {
            app.push("app:racer")
        }
    }
}
