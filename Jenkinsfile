pipeline {

    agent {
        docker {
            image 'ruby'
        }
    }
    
    stages {
        stage('Build') {
            steps {
                echo 'Compilar e resolver dependencias'
                sh 'bundle install'
            }
        }
        stage('Test') {
            steps {
                echo "Executar testes de regressão"
            }
        }
        stage('Testes Aceitação Usuario') {
            steps {
                echo "Aguarde ate a aceitação do usuario"
                input(message: 'Ir para produção?', ok: 'Yes')
            }
        }
        stage('Prod') {
            steps {
                echo "App esta pronto em Prod =)"
            }
        }
    }
}
