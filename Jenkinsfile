node david-optiplex-3020 {
    def app
    stage ('Clone and Build') {
        checkout scm
        app=docker.build("racer")
    }
    stage ('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'dockerHub') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}
