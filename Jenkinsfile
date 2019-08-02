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

			 git 'https://github.com/nags28/terraform_jenkins_without_backend-.git'
                script {
                    sh 'chmod +x infra.sh'
                       if (params.env == 'dev')
			sh 'AWS_ACCOUNT_ID=378808291776  ./infra.sh'
                }
            }
		
        }
    }//stages
 
}//pipeline
}
