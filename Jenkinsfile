pipeline {
    agent {docker {image 'jnj-robot'}}
    stages {
        stage('run_robot') {
            steps {
                //Build the docker image
                sh 'docker build -t jnj-robot .'
                sh 'pwd'
                sh 'ls'
                sh './run-jenkins-robot.sh'
            }
        }
    }
}