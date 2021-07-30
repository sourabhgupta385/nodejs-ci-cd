pipeline {
    agent any

    stages {
        stage('demo01') {
            steps {
                git branch: 'main', url: 'https://github.com/up1/workshop-nodejs-ci-cd.git'
                sh '''npm install
npm test'''
            }
        }
        stage('deploy') {
            steps {
                sh 'pm2 restart all'
            }
        }
        stage('api-test') {
            steps {
                sh '''cd postman
newman run day01.postman_collection.json -r cli,junit'''
            }
        }
    }
}