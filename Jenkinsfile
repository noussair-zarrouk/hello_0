pipeline {

    agent any

    stages {

        stage('Build') {
            agent { label 'kube' }
            steps {
		    
                  echo 'Building..'
                    sh '''
                    ./jenkins_steps/build.sh
                '''
            }

            post {
                success {
                    echo 'This will run only if successful'
      
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