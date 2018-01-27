node {
  stage("Pull code") {
    checkout scm
  }
  stage("Build docker image"){
    docker.build('tdien105/basicexpress')
  }
  stage("Deloy"){
    sh 'docker run -p 80:3000 --name=basicexpress -d tdien105/basicexpress'
  }
}
