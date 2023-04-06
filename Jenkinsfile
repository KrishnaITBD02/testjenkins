node {
  stage('SCM') {
    checkout scm
  }
  stage('Print hello'){
    a = 5
    b = 6
    c = a+b
    print(c)
  }
  stage('SonarQube Analysis') {
    def scannerHome = tool 'sonarqube';
    withSonarQubeEnv() {
      sh "${scannerHome}/bin/sonar-scanner"
    }
  }
}
