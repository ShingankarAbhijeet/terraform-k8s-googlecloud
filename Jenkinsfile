pipeline {
    agent any
     environment {
        GOOGLE_APPLICATION_CREDENTIALS = credentials('Jenkins-sa-Terraform-key')
     }   
    stages {
        stage('terraform init') {
            steps {
                script {
                def tfHome = tool 'Terraform'
                sh "${tfHome}/terraform init"
                }
            }
        }
        stage('terraform destroy') {
            steps {
                script {
                    def tfHome = tool 'Terraform'
                    sh "${tfHome}/terraform remove -auto-approve"
                }
            }
        }
    }
}