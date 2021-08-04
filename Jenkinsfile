pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
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
                sh 'ssh jeff@143.198.225.166 "source django-poll-app-76767/env/bin/activate; \
                cd django-poll-app-76767/polls; \
                git pull origin test; \
                pip install -r requirements.txt --no-warn-script-location; \
                python manage.py migrate; \
                deactivate; \
                sudo systemctl restart nginx; \
                sudo systemctl restart gunicorn "' 
 
            }
        }
    }
}
