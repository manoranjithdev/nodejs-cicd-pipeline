pipeline {
    agent any

    stages {
        stage('Deploying of NodeJS Application') {
            steps {
                sh 'chmod +x deploy.sh'
                sh './deploy.sh'
            }
        }
    }
}
