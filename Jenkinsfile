node {
    // Clean workspace before doing anything
    deleteDir()

    try {
        stage ('Clone') {
            checkout scm
        }
        stage ('Build') {
            sh "echo 'hello.sh'"
        }
       
        stage ('Deploy') {
            sh "echo 'hello.sh'"
        }
    } catch (err) {
        currentBuild.result = 'FAILED'
        throw err
    }
}