
node{
    stage('Checkout'){
        git branch:'main', url: 'https://github.com/jagadish1209/AngularCICDDockerSample.git'
    }

    stage('Install node modules'){
        sh "npm install"
    }

    stage("TEST"){
      steps{
        echo "insert your testing here"
      }
    }

    stage("Build"){
        sh "npm run build"
    }

    stage("BUILD APP"){
      steps{
        sh "node_modules/.bin/ng build --prod"
      }
    }

    stage("BUILD DOCKER"){
      steps{
        script{
          dockerImageBuild= docker.build registry + ":latest"
        }
      }
    }

    stage("DEPLOY DOCKER") {
      steps {
          script {
            docker.withRegistry('', registryCredential) {
              dockerImageBuild.push()
            }
         }
      }
   }

    stage("DEPLOY & ACTIVATE") {
      steps {
        echo 'this part will differ depending on setup'
      }
    }
}

