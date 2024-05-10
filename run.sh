docker build -t my-flask-app:latest .
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl apply -f prometheus-config.yaml

kubectl port-forward svc/grafana 3000:80 -n monitoring