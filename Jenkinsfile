node {
  stage('SCM') {
    checkout scm
  }
  stage('Print hello'){
    print("Hello")
  }
  stage('SonarQube Analysis') {
    def scannerHome = tool 'sonarqube';
    withSonarQubeEnv() {
      sh "${scannerHome}/bin/sonar-scanner"
    }
  }
}
