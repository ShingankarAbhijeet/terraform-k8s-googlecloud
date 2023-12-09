pieline {
    agent any
    stages {
        stage{"terraform init"} {
            steps {
                script {
                def tfHome = tool 'Terraform'
                sh "${tfHome}/terraform init"
                }
            }
        }
        stage{'terraform apply'} {
            steps {
                script {
                    def tfHome = tool 'terraform'
                    sh "${tfHome}/terraform apply -auto-approve"
                }
            }
        }
    }
}