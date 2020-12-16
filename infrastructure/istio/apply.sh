source ../bin/authenticate-cluster.sh

# istio

istioctl install -y

# addons

kubectl apply -f kiali.yml
kubectl apply -f grafana.yml
kubectl apply -f prometheus.yml