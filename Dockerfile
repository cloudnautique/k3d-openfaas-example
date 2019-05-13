FROM rancher/k3s:v0.5.0
ADD https://raw.githubusercontent.com/openfaas/faas-netes/master/namespaces.yml /var/lib/rancher/k3s/server/manifests/namespace.yml
COPY ./admin-secrets.yml ./yaml/*.yml /var/lib/rancher/k3s/server/manifests/
