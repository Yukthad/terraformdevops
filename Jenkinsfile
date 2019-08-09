#!groovy

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
	  stages {
	 stage('git') {
		 
	when {
    expression { 
        params.action == 'apply'
        
    }
}
            steps {
                  git 'https://github.com/nags28/terraform_jenkins.git'
                 }
                 }// stage git
        stage('terraform') {
            environment {
                LAYER = "${params.env}"
                INFRA_ACTION = "${params.action}"
            }
      
		 steps {
                script {
                    sh 'chmod +x infra.sh'
                       if (params.env == 'dev')
			sh 'AWS_ACCOUNT_ID=378808291776  ./infra.sh'
                }
            }
		
        }
    }//stages
 
}//pipeline

