pipeline{
    environment{
        registry=""
        registryCredential=""
        dockerImage=""
        dockerRun=""
    }
    agent any
    stages{
        stage('Checkout'){
            steps{
                git branch:'main', url: 'https://github.com/jagadish1209/AngularCICDDockerSample.git'
            }
        }

         stage('Install node modules'){
            steps{
            sh "npm install"
            }
        }

        stage('Build'){
            steps{
                sh "npm run build-prod"
            }
        }
    }
}


// node{
//     stage('Checkout'){
//         git branch:'main', url: 'https://github.com/jagadish1209/AngularCICDDockerSample.git'
//     }

//     stage('Install node modules'){
//         sh "npm install"
//     }

//     stage("TEST"){
//         echo "insert your testing here"
//     }

//     stage("Build"){
//         sh "npm run build-prod"
//     }

//     stage("Docker Build and Tag"){
//          sh 'docker build -t jagadish1209/angularcicdsampledocker:latest .'
//     }

//     stage("Docker Login"){
//         sh 'docker login -u jagadish1209 --password a2c7a1f8-f9a0-4946-a7a4-05e2a1bf0ae8'
//     }

//     stage("Docker push ang Tag"){
//             sh 'docker push jagadish1209/angularcicdsampledocker:latest'
//     }

//     stage("Dockers List"){
//         sh "docker ps"
//     }

//     stage("Run Docker Container"){
//         sh 'docker run -d -p 4203:4203 jagadish1209/angularcicdsampledocker:latest'
//     }
    
// }

