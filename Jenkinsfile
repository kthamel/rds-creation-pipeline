pipeline {
    agent {label 'slave-2'}

    stages {
        stage('Terraform Initialization') {
            steps {
                withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId:'dba-user', secretKeyValueVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                    sh 'terraform init'
                    sh 'terraform plan'
                }
                
            }
        }
        
        // stage('Terraform Plan') {
        //     steps {
        //         withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId:'dba-user', secretKeyValueVariable: 'AWS_SECRET_ACCESS_KEY')]) {
        //             sh 'terraform plan'
        //         }
        //     }
        // }  
    }
}