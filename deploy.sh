docker build -t hungvi/k8s-practice-client:latest -t hungvi/k8s-practice-client:$SHA -f ./client/Dockerfile ./client

docker push hungvi/k8s-practice-client:latest
docker push hungvi/k8s-practice-client:$SHA

kubectl apply -f k8s
kubectl set image deployments/client-deployment client=hungvi/k8s-practice-client:$SHA
