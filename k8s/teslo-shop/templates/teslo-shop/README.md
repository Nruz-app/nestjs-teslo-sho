# This is a markdown file and should not be treated as a YAML file

###### Comandos para Crear pg-admin ######

## NOTA Agregar esta ruta en .helmignore

## Crear Secret private de Aunteticacion con google cloud (CLI)

# Nota Importante:

1 -  Descargar Archivo de configuracion de GCP 
  - https://console.cloud.google.com/iam-admin/serviceaccounts/details/103203138605401358918/permissions?invt=AbuIMg&project=teslo-shop-backend  

2 - cambiar nombre y dejar archivo de configuracion en 'C:/GCP/gcp-teslo-shop-backend.json'

3 - Ejecutar el comnado "kubectl create secret" en la terminal de git bash ya que 
    hay error al intepretar --docker-password="$(cat 'C:/GCP/gcp-teslo-shop-backend.json')"

``` 
kubectl create secret docker-registry gcr-json-key --docker-server=us-central1-docker.pkg.dev --docker-username=_json_key --docker-password="$(cat 'C:/GCP/gcp-teslo-shop-backend.json')" --docker-email=ruznicolas176@gmail.com --dry-run=client -o yaml | kubectl apply -f -
```

## Crear Secret
```
kubectl create secret generic teslo-shop-secret --from-literal=JWT_SECRET=c2VjcmV0X3N0cmluZw== --dry-run=client -o yaml | kubectl apply -f -
```


## Crear Deploy 
``` 
kubectl create deployment teslo-shop --image=us-central1-docker.pkg.dev/teslo-shop-backend/teslo-shop-app/teslo-shop-backend --dry-run=client -o yaml > teslo-shop.deployment.yml
```

## Crear Service 
```
kubectl create service nodeport teslo-shop-secret --tcp=3000 --dry-run=client -o yaml > teslo-shop.service.yml
```