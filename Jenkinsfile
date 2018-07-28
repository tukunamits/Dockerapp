node {
    // Clean workspace before doing anything
    deleteDir()

    try {
        stage ('Clone') {
            echo "clone success"
        }
        stage ('Build') {
            echo "Build success"
        }
       
        stage ('Deploy') {
            echo "Deploy success"
        }
    } catch (err) {
        currentBuild.result = 'FAILED'
        throw err
    }
}
