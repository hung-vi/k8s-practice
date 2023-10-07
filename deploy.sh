docker build -t hungvi/k8s-practice-client -t hungvi/k8s-practice-client:$SHA -f ./client/Dockerfile ./client

docker push hungvi/k8s-practice-client:latest
docker push hungvi/k8s-practice-client:$SHA
