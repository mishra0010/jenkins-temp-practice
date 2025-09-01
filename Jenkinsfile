// pipeline {
//     agent any

//     stages {
//         stage('Checkout Code') {
//             steps {
//                 git branch: 'main', url: 'https://github.com/mishra0010/jenkins-temp-practice.git'
//             }
//         }

//         stage('Build') {
//             steps {
//                 echo 'Simulating build step...'
//                 // sh 'python3 hello.py'   // run the python script
//             }
//         }

//         stage('Test') {
//             steps {
//                 echo 'Running tests (fake for now)...'
//                 sh 'echo "All tests passed ✅"'
//             }
//         }

//         stage('Deploy') {
//             steps {
//                 echo 'Deploying application (simulation)...'
//             }
//         }
//     }

//     post {
//         success {
//             echo 'Pipeline completed successfully! 🎉'
//         }
//         failure {
//             echo 'Pipeline failed ❌'
//         }
//     }
// }

pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'bash build.sh'
            }
            post {
                success {
                    archiveArtifacts artifacts: 'build.zip', fingerprint: true
                }
            }
        }

        stage('Test') {
            steps {
                sh 'bash test.sh'
            }
        }

        stage('Package') {
            when {
                expression { currentBuild.currentResult == 'SUCCESS' }
            }
            steps {
                sh 'bash package.sh'
            }
            post {
                success {
                    archiveArtifacts artifacts: 'package.tar.gz', fingerprint: true
                }
            }
        }

        stage('Deploy') {
            when {
                branch 'main'
            }
            steps {
                sh 'bash deploy.sh main'
            }
        }
    }

    post {
        always {
            echo "Pipeline finished with status: ${currentBuild.currentResult}"
        }
    }
}






















