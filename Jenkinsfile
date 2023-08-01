pipeline {
    agent {label 'slave-2'}

    stages {
        withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId:'dba-user', secretKeyValueVariable: 'AWS_SECRET_ACCESS_KEY')]){
        stage('Terraform Initialization') {
            steps {
                sh 'terraform init'
                }
            }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
                }
            }
        }
    }
}