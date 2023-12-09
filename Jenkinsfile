pipeline {
    agent any
     environment {
        GOOGLE_APPLICATION_CREDENTIALS = credentials('Jenkins-sa-Terraform-key')
    stages {
        stage('terraform init') {
            steps {
                script {
                def tfHome = tool 'Terraform'
                sh "${tfHome}/terraform init"
                }
            }
        }
        stage('terraform apply') {
            steps {
                script {
                    def tfHome = tool 'Terraform'
                    sh "${tfHome}/terraform apply -auto-approve"
                }
            }
        }
    }
}