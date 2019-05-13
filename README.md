# Openfaas K3s Appliance 

### What is this? 

This is a quick and dirty example of how to create an application specific K3s cluster for use with K3d. This image will start a k3s cluster and launch the Openfaas serverless framework in a local dev type of environment.


### How to use this quickly?

#### Pre-reqs:

 1) Docker
 2) [K3d](https://github.com/rancher/k3d/releases)
 3) The Openfaas [CLI tool](https://github.com/openfaas/faas-cli#get-started-install-the-cli). 


#### Steps to run:

 1) k3d create --image cloudnautique/k3d-openfaas
 2) Source the kubectl file that is output by the command `export KUBECONFIG="$(k3d get-kubeconfig --name='k3s-default')"`
 3) `kubectl port-forward svc/gateway -n openfaas 31112:8080 &`
 4) Setup the CLI:
```
export OPENFAAS_URL=http://127.0.0.1:31112

echo -n password | faas-cli login --password-stdin
```
 5) Checkout the platform: https://docs.openfaas.com/deployment/kubernetes/#use-openfaas


### Building the image:

checkout this repo:

`docker build --rm -t <image> .`


