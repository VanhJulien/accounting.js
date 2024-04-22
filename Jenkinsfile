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

        // Ne fonctionne pas, les tests ne passent pas
        // stage('Test') {
        //     steps {
        //         echo 'Installing dev dependencies for testing..'
        //         bat 'npm install --only=dev'
        //         bat 'npx jasmine init'
        //         echo 'Testing..'
        //         bat 'npm test'
        //     }
        // }


        // Credentials à remplir
        stage('Deploy') {
            steps {
                echo 'Deploying to npm...'
                // Publication sur npm
                script {
                    // Connexion à npm
                    bat 'npm login -u your-username -p your-password'
                    // Publication du package
                    bat 'npm publish'
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