node {
    checkout scm

    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {

        def customImage = docker.build("diffen:test")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}