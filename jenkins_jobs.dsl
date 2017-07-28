job('01-pilot-pr-runner') {
    scm {
        git {
            remote {
                github('rmyers/rsi')
                refspec('+refs/pull/*:refs/remotes/origin/pr/*')
            }
            branch('${sha1}')
        }
    }
}

job('02-pilot-deploy') {
    scm {
        git {
            remote {
                github('rmyers/rsi')
                refspec('+refs/pull/*:refs/remotes/origin/pr/*')
            }
            branch('${sha1}')
        }
    }
}
