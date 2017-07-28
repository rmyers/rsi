job('01-pilot-pr-runner') {
    scm {
        git {
            remote {
                github('git@github.com:rmyers/rsi.git')
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
                github('git@github.com:rmyers/rsi.git')
                refspec('+refs/pull/*:refs/remotes/origin/pr/*')
            }
            branch('${sha1}')
        }
    }
}
