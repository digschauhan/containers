kubectl apply -f ./mongoconfig.yaml
kubectl apply -f ./mongosecret.yaml


kubectl apply -f ./mongodbdeploy.yaml
kubectl apply -f ./mongoexpressdeploy.yaml


kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-0.32.0/deploy/static/provider/aws/deploy.yaml

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout tls.key -out tls.crt -subj "/CN=prepdigigroup.com/O=prepdigigroup.com"

kubectl create secret tls tls-secret --key tls.key --cert tls.crt

kubectl delete -A ValidatingWebhookConfiguration ingress-nginx-admission

#kubectl apply -f ./default-backend-deployment.yaml

kubectl apply -f ./mongoingress.yaml

eksctl scale nodegroup --cluster=my-cluster --nodes=2 node1

