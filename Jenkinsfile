pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                cp 'env.example .env'
                cat '.env'
                sh 'pip install -r requirements.txt' 
            }
        }
        stage('Test') { 
            steps {
                sh 'python3 manage.py test' 
            }
        }
        stage('Deploy') { 
            steps {
                sh 'echo deploying' 
            }
        }
    }
}
