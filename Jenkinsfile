pipeline {
    agent { docker { image 'python:3' } }
    stages {
        stage('run_robot') {
            steps {
                //Build the docker image
                sh 'docker build -t jnj-robot .'
            }
        }
    }
}