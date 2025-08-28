pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/YOUR_USERNAME/jenkins-demo.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Simulating build step...'
                sh 'python3 hello.py'   // run the python script
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests (fake for now)...'
                sh 'echo "All tests passed ✅"'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying application (simulation)...'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully! 🎉'
        }
        failure {
            echo 'Pipeline failed ❌'
        }
    }
}
