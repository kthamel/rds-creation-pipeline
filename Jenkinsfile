pipeline {
    agent none

    stages {
        stage('Terraform Initialization') {
            agent { label 'slave-1' }
                steps {
                    withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId:'dba-user', secretKeyValueVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                        sh 'terraform init'
                    }    
                }
            }
        
        stage('Terraform Plan') {
            agent { label 'slave-2' }
                steps {
                    withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId:'dba-user', secretKeyValueVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                        sh 'terraform plan'
                    }
                }
            }
        }
    }