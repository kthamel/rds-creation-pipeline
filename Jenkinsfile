pipeline {
    agent {label 'slave-1'}

    stages {
        stage('Terraform Initialization') {
            steps {
                withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId:'dba-user', secretKeyValueVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                    sh 'terraform init && terraform plan'
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
        post {
            always {
                deleteDir() /* clean up our workspace */
                }
            }   
    }
}