pipeline{

    agent any
    tools{
        maven "maven"
    }

    environment{
           APP_NAME = "spring-jenkin-docker-cicd"
           RELEASE_NO= "1.0.0"
           DOCKER_USER= "sainathshinde85"
           IMAGE_NAME= "${DOCKER_USER}"+"/"+"${APP_NAME}"
           IMAGE_TAG= "${RELEASE_NO}-${BUILD_NUMBER}"
    }

    stages{

        stage("SCM checkout"){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/sainathshinde85/My_Jenkin_docker_CICD.git']])
            }
        }

        stage("Build Process"){
            steps{
                script{
                    bat 'mvn clean install'
                }
            }
        }

        stage("Build Image"){
            steps{
                script{
                  bat "docker build -t ${env.IMAGE_NAME}:${env.IMAGE_TAG} ."
                }
            }
        }

//         stage("Deploy Image to Hub"){
//             steps{
//                 withCredentials([string(credentialsId: 'dp', variable: 'dp')]) {
//                  sh 'docker login -u javatechie4u -p ${dp}'
//                  sh 'docker push ${IMAGE_NAME}:${IMAGE_TAG}'
//                 }
//             }
//         }


    }
}
