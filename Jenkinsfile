pipeline{
    agent any
    tools {
        maven 'Maven_local'
    }
    environment {
        secret = credentials('25e36035-6033-4a89-974d-f9d56dbd8344')
    }
    stages {
        stage('pre-build') {
            steps {
                sh 'echo $secret'
                sh 'echo "$BUILD_NUMBER"'
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: '25e36035-6033-4a89-974d-f9d56dbd8344', url: 'https://github.com/rushikeshsawant143/webapp.git']]])
            }
        }
        stage('build'){
            steps {
                sh 'echo $secret'
                sh 'mvn clean install'
                sh 'docker build -t tomcat-test .'
            }
        }
        stage('push to ecr'){
            steps {
                // sh 'aws ecr create-repository --repository-name docker-testing --region us-east-1'
                sh 'docker tag tomcat-test 067663653687.dkr.ecr.us-east-1.amazonaws.com/docker-testng'
                sh 'aws ecr get-login-password --region us-east-1| docker login --username AWS --password-stdin 067663653687.dkr.ecr.us-east-1.amazonaws.com/docker-testng'
                sh 'docker push 067663653687.dkr.ecr.us-east-1.amazonaws.com/docker-testng'
            }
        }
    }
    post {
        success {
            archiveArtifacts artifacts: '**/*.war', followSymlinks: false
        }
    }
}


