
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

    stage("Docker Build and Tag"){
         sh 'docker build -t angularcicdsampledocker:latest .'
    }

    stage("Docker Login"){
        sh 'docker login -u jagadish1209 -p Java!@#2009'
    }

    stage("Docker push ang Tag"){
        sh 'docker push angularcicdsampledocker:latest'
    }

    stage("Run Docker Container"){
        sh 'docker run -d -p 80:80 angularcicdsampledocker:latest'
    }


   
    
}


// pipeline {
//   agent none
//   stages {
//     stage('Fetch dependencies') {
//         agent {
//             docker 'circleci/node:9.3-stretch-browsers'
//         }
//         steps {
//             sh 'yarn'
//             stash includes: 'node_modules/', name: 'node_modules'
//         }
//     }

//     stage('Compile') {
//       agent {
//         docker 'circleci/node:9.3-stretch-browsers'
//       }
//       steps {
//         unstash 'node_modules'
//         sh 'yarn build:prod'
//         stash includes: 'dist/', name: 'dist'
//       }
//     }

//   }
// }
