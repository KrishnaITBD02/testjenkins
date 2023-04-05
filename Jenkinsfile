pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "Hello, World!"'
            }
        }
        stage('SonarQube Scan') {
            steps {
                withSonarQubeEnv('SonarQube') {
                    sh 'mvn sonar:sonar'
                }
            }
        }
    }
}
