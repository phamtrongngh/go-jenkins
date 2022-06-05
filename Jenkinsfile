pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/phamtrongngh/go-jenkins.git'
            }
        }
        stage('Build') {
            steps {
                // This step should not normally be used in your script. Consult the inline help for details.
                withDockerRegistry(credentialsId: 'dockerhub-test-jenkins', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -t benalpha1105/golang-jenkins .'
                    sh 'docker push benalpha1105/golang-jenkins'
                }
            }
        }
    }
}

