pipeline {
    agent {label 'slave-psql'}

    stages {
        stage('Terraform Initialization') {
            steps {
                withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId:'dba-user', secretKeyValueVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId:'dba-user', secretKeyValueVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                    sh 'terraform plan'
                }
            }
        }    

        stage('Terraform Apply') {
            steps {
                withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId:'dba-user', secretKeyValueVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                    timeout(time: 60, unit: "MINUTES") {
                        input message: 'Are you sure to apply these changes?', ok: 'Apply'
                            sh 'echo Hello World'
                            sh 'psql –-version'
                            //    sh 'terraform apply --auto-approve'
                    }
                }
            }
        }
    }
}