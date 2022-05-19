
node{
    stage('Checkout'){
        git branch:'main', url: 'https://github.com/jagadish1209/AngularCICDDockerSample.git'
    }

    stage('Install node modules'){
        sh "npm install"
    }

    stage("TEST"){
        echo "insert your testing here"
    }

    stage("Build"){
        sh "npm run build"
    }
    
}

