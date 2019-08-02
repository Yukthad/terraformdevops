#!groovy

pipeline {
    agent any
	pipeline {
    agent any
	environment {
        AWS_ROLE = "terraform1"
    }
   
    parameters {
        choice(name: 'env', choices: 'dev', description: 'Select Environment')
        choice(name: 'action', choices: 'init\nplan\napply\nplan-destroy\ndestroy', description: 'Select Action')
    }
    stages {
	
        stage('terraform') {
            environment {
                LAYER = "${params.env}"
                INFRA_ACTION = "${params.action}"
            }
      
		 steps {

                script {
                    if (params.env == 'dev')
                        sh "make $INFRA_ACTION"
                }
            }
		
        }
    }//stages
 
}//pipeline
