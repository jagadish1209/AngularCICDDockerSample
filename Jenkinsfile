node{
    stage('Checkout'){
        git branch:'main', url: 'git@github.com:jagadish1209/AngularCICDDockerSample.git'
    }

    stage('Install node modules'){
        sh "npm install"
    }

    stage("Build"){
        sh "ng build"
    }
}