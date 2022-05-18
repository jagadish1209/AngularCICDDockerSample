node{
    tools {
    //nodejs 'NodeJS 12.18.1'
    nodejs 'NodeJS 16.2.0'
    }

    stage('Checkout'){
        git branch:'main', url: 'https://github.com/jagadish1209/AngularCICDDockerSample.git'
    }

    stage('Install node modules'){
        sh "npm install"
    }

    stage("Build"){
        sh "npm run build"
    }
}