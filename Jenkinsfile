node {
    // Clean workspace before doing anything
    deleteDir()

    try {
        stage ('job1') {
           echo "i am job1"
        }
        stage ('job2') {
            echo "i am job2"
        }
       
        stage ('job3') {
            echo "i am job3"
        }
    } catch (err) {
        currentBuild.result = 'FAILED'
        throw err
    }
}
