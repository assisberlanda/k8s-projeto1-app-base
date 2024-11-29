# ☸️ Kubernetes
### Criando um Deploy Kubernets de uma Aplicação
### 🚦 Estrutura das Pastas
| k8-projeto-app-base | backend | database | frontend |
|-|-|-|-|
| backend | Dockerfile | Dockerfile | Dockerfile |
| database | conexao.php | sql.sql | index.html |
| frontend | index.php || css.css |
| deployment.yml ||| js.js |
| service.yml |||||
| script.sh |||||

# ⚙️ Para Rodar o script.sh no Mac

    ./script.sh
## 🔥 Principais comandos:
    minikube service --url php
    kubectl exec --tty --stdin mysql-849684b7c9-gttfh -- /bin/bash
    kubectl get deploy
    kubectl get service
    kubectl get pods
    kubectl apply -f deployment.yml
## ✨ Novos Comandos 🚧
    kubectl apply -f deploy.yml --record
    kubectl rollout history deployment httpd
    kubectl rollout undo deployment httpd
    kubectl describe deployment httpd
    kubectl rollout undo deployment httpd --to-revision=1
