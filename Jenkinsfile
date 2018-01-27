node {
  stage("Pull code") {
    checkout scm
  }
  stage("Build docker image"){
    sh 'cd /root/app/basic-express-site-2016'
    sh 'docker build -t tdien105/basicexpress .'
  }
  stage("Deloy"){
    sh 'docker stop $(docker ps -a -q)'
    sh 'docker rm $(docker ps -a -q)'
    sh 'docker run -p 80:3000 -d tdien105/basicexpress'
  }
}
