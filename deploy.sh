docker build -t hungvi/k8s-practice-client:latest -t hungvi/k8s-practice-client:$SHA -f ./client/Dockerfile ./client
docker build -t hungvi/k8s-practice-server:latest -t hungvi/k8s-practice-server:$SHA -f ./server/Dockerfile ./server

docker push hungvi/k8s-practice-client:latest
docker push hungvi/k8s-practice-client:$SHA

docker push hungvi/k8s-practice-server:latest
docker push hungvi/k8s-practice-server:$SHA

kubectl apply -f k8s
kubectl set image deployments/client-deployment client=hungvi/k8s-practice-client:$SHA
kubectl set image deployments/server-deployment server=hungvi/k8s-practice-server:$SHA
