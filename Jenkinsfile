node {
  stage('SCM') {
    checkout scm
  }
  stage('Print hello'){
    python3 test.py
  }
  stage('SonarQube Analysis') {
    def scannerHome = tool 'sonarqube';
    withSonarQubeEnv() {
      sh "${scannerHome}/bin/sonar-scanner"
    }
  }
}
