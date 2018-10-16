pipeline {
  agent none
  environment {
    NEXUS_TEST = 'nexus.teamdigitale.test'
    NEXUS_PROD = 'nexus.daf.teamdigitale.it'
  }
  stages {
    stage('Compile test') {
      when { branch 'dev' }
      agent { label 'Master' }
        steps {
          slackSend (message: "BUILD START: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' CHECK THE RESULT ON: https://cd.daf.teamdigitale.it/blue/organization/jenkins/OntoPiA-UI/activity")
          sh 'cd lodview/LodView; mvn clean compile war:war'
          }
    }
    stage('Compile prod') {
      when { branch 'master'}
      agent { label 'prod' }
        steps {
          slackSend (message: "BUILD START: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' CHECK THE RESULT ON: https://cd.daf.teamdigitale.it/blue/organizations/jenkins/OntoPiA-UI/activity")
          sh 'cd lodview/LodView; mvn clean compile war:war'
            }
    }
    stage('Build lode test') {
        when { branch 'dev' }
        agent { label 'Master' }
        steps {
         sh '''docker build ./lode -t $NEXUS_TEST/lode:$(cat lode/version) --network host'''
        }
    }
    stage('Build lode prod') {
        when { branch 'master'}
        agent { label 'prod' }
        steps {
         sh '''docker build ./lode -t $NEXUS_PROD/lode:$(cat lode/version) --network host'''
        }
    }
    stage('Build lodview test') {
        when { branch 'dev' }
        agent { label 'Master' }
        steps {
         sh '''docker build ./lodview -t $NEXUS_TEST/lodview:$(cat lodview/version) --network host'''
        }
    }
    stage('Build lodview prod') {
        when { branch 'master'}
        agent { label 'prod' }
        steps {
         sh '''docker build ./lodview -t $NEXUS_PROD/lodview:$(cat lodview/version) --network host'''
        }
    }
    stage('Build virtuoso test') {
        when { branch 'dev' }
        agent { label 'Master' }
        steps {
         sh '''docker build ./virtuoso -t $NEXUS_TEST/virtuoso:$(cat virtuoso/version) --network host'''
        }
    }
    stage('Build virtuoso prod') {
        when { branch 'master'}
        agent { label 'prod' }
        steps {
         sh '''docker build ./virtuoso -t $NEXUS_PROD/virtuoso:$(cat virtuoso/version) --network host'''
        }
    }
    stage('Publish lode test') {
        when { branch 'dev' }
        agent { label 'Master' }
        steps {
         sh '''docker push $NEXUS_TEST/lode:$(cat lode/version)'''
        }
    }
    stage('Publish lode prod') {
        when { branch 'master'}
        agent { label 'prod' }
        steps {
         sh '''docker push $NEXUS_PROD/lode:$(cat lode/version)'''
        }
    }
    stage('Publish lodview test') {
        when { branch 'dev' }
        agent { label 'Master' }
        steps {
         sh '''docker push $NEXUS_TEST/lodview:$(cat lodview/version)'''
        }
    }
    stage('Publish lodview prod') {
        when { branch 'master'}
        agent { label 'prod' }
        steps {
         sh '''docker push $NEXUS_PROD/lodview:$(cat lodview/version)'''
        }
    }
    stage('Publish virtuoso test') {
        when { branch 'dev' }
        agent { label 'Master' }
        steps {
         sh '''docker push $NEXUS_TEST/virtuoso:$(cat virtuoso/version)'''
        }
    }
    stage('Publish virtuoso prod') {
        when { branch 'master'}
        agent { label 'prod' }
        steps {
         sh '''docker push $NEXUS_PROD/virtuoso:$(cat virtuoso/version)'''
        }
    }
        stage('Deploy test') {
            when { branch 'dev' }
            agent { label 'Master' }
            environment {
                DEPLOY_ENV = 'test'
                KUBECONFIG = '/var/lib/jenkins/.kube/config.teamdigitale-staging'
            }
            steps {
                sh 'kubectl replace -f kubernetes/ontoPIA.${DEPLOY_ENV}.yaml'
                slackSend (color: '#00FF00', message: "SUCCESSFUL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}] deployed in '${env.DEPLOY_ENV}' https://cd.daf.teamdigitale.it/blue/organizations/jenkins/daf-srv-storage/activity")
            }

        }
        stage('Deploy production') {
            when { branch 'master' }
            agent { label 'prod' }
            environment {
                DEPLOY_ENV = 'prod'
                KUBECONFIG = '/home/centos/.kube/config.teamdigitale-production'
            }
            steps {
                sh 'kubectl replace -f kubernetes/ontoPIA.${DEPLOY_ENV}.yaml'
                slackSend (color: '#00FF00', message: "SUCCESSFUL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}] deployed in '${env.DEPLOY_ENV}' https://cd.daf.teamdigitale.it/blue/organizations/jenkins/daf-srv-storage/activity")
            }
        }
    }
    post {
        failure {
            slackSend (color: '#ff0000', message: "FAIL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' https://cd.daf.teamdigitale.it/blue/organizations/jenkins/daf-srv-storage/activity")
        }
    }
}
