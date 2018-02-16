pipeline {
    agent any

	stages {
        stage('build') {
            steps {
                script {
                    image = docker.build("elnebuloso/compass:latest", "--pull --rm --no-cache -f Dockerfile .")

                    image.inside() {
                        compass_version = sh(script: "compass --version | grep -Po '^Compass (\\d+\\.)+\\d+' | sed 's!Compass !!g'", returnStdout: true).trim()
                    }

                    semver = semver(compass_version)

                    docker.withRegistry("https://registry.hub.docker.com", '061d45cc-bc11-4490-ac21-3b2276f1dd05'){
                        image.push("${semver.get('tag_revision')}")
                        image.push("${semver.get('tag_minor')}")
                        image.push("${semver.get('tag_major')}")
                        image.push("latest")
                    }
                }
            }
        }
	}

	post {
	    always {
            cleanWs()
	    }
	}
}

/**
 * @var string version
 * @return map
 */
def semver(version) {
    def parser = /(?<major>\d+).(?<minor>\d+).(?<revision>\d+)/
    def match = (version =~ parser)

    if(match.matches()) {
        def major = match[0][1]
        def minor = match[0][2]
        def revision = match[0][3]

        def tag_major = "${major}"
        def tag_minor = "${major}.${minor}"
        def tag_revision = "${major}.${minor}.${revision}"

        match = null

        def map = [tag_major: tag_major, tag_minor: tag_minor, tag_revision: tag_revision]

        return map
    }
}