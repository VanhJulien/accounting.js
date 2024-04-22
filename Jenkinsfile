pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                bat 'npm install --production'

                // Créer la version minifiée de accounting.js
                bat 'npm run build'
            }
        }
        // stage('Test') {
        //     steps {
        //         echo 'Installing dev dependencies for testing..'
        //         bat 'npm install --only=dev'
        //         bat 'npx jasmine init'
        //         echo 'Testing..'
        //         bat 'npm test'
        //     }
        // }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                // Ajoutez ici les étapes pour le déploiement si nécessaire
            }
        }
        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                script {
                    // Étape de construction de l'image Docker
                    docker.build('accounting-image')
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                echo 'Running Docker container...'
                script {
                    // Exécutez le conteneur Docker à partir de l'image construite
                    docker.image('accounting-image').run()
                }
            }
        }

        stage('Archive Artifact') {
            steps {
                    archiveArtifacts 'accounting.js'
                }
         }
    }
}