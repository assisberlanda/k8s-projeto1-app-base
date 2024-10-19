echo "Criando Imagens Docker................."

docker build -t assisberlanda/projeto-backend:1.0 backend/.
docker build -t assisberlanda/projeto-database:1.0 database/.

echo "Realizando o push das Imagens para o DockerHub................."

docker push assisberlanda/projeto-backend:1.0
docker push assisberlanda/projeto-database:1.0

echo "Criand Serviços no Cluster Kubernetes................."

kubectl apply -f ./services.yml

echo "Criando os Deployments................."

kubectl apply -f ./deployment.yml