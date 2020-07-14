pipeline {

    agent any
    

    stages {

        stage('Build') {
            steps {
		    agent { label 'kube' }
                  echo 'Building..'
                  echo $HOSTNAME
  
            }

            post {
                success {
                    echo 'This will run only if successful'
                    echo $HOSTNAME
                }
            }
        }

        stage('Test') {
            steps {
                sh './jenkins/test/mvn.sh mvn test'
            }

            post {
                always {
                    junit 'java-app/target/surefire-reports/*.xml'
                }
            }
        }

        stage('Push') {
            steps {
                sh './jenkins/push/push.sh'
            }
        }

        stage('Deploy') {
            steps {
                sh './jenkins/deploy/deploy.sh'
            }
        }
    }
}