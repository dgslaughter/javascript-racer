node {
    def app
    stage ('Initialize') {
        def dockerHome = tool 'myDocker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
    }
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
