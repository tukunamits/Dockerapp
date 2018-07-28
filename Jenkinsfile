node {
    // Clean workspace before doing anything
    deleteDir()

    try {
        stage ('Clone') {
            echo "clone success"
        }
        stage ('Build') {
            echo "build success'"
        }
       
        stage ('Deploy') {
            echo "deploy success"
        }
    } catch (err) {
        currentBuild.result = 'FAILED'
        throw err
    }
}
