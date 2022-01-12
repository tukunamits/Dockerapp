node{
     stage('Scm checkout'){
          git 'https://github.com/tukunamits/Dockerapp.git'
     }
    stage('Maven Build'){
        sh 'mvn clean package'
    }
    stage('Build docker Image'){
        sh 'docker build -t tukunamits/webapp:2.0.0 .'
    }
    stage('Push docker Image'){
        withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'dockerHubPwd')]) {
           sh "docker login -u tukunamits -p ${dockerHubPwd}"
        }
        sh 'docker push tukunamits/webapp:2.0.0'
    }
    stage('deploy package'){
        def dockerRun = 'docker run -p 8080:8080 -d --name dockerapp tukunamits/webapp:2.0.0'
        sshagent(['c29f6587-0084-4a6f-bf0b-44efca9d85d3']) {
           sh "ssh -o StrictHostKeyChecking=no ec2-user@172.xx.xx.xx.xx ${dockerRun}"
        }
    }
}
