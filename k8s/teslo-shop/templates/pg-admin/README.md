# This is a markdown file and should not be treated as a YAML file

###### Comandos para Crear pg-admin ######

## NOTA Agregar esta ruta en .helmignore

## Crear Secret (ok - sin base65 k8s se encarga de incriptar)
```
kubectl create secret generic pg-admin-secret --from-literal=PG_USER_EMAIL=n.ruz@gmail.com --from-literal=DB_PASSWORD=passWordSecreto --dry-run=client -o yaml | kubectl apply -f -
```

## Crear Secret (Error - x base64 k8 se encarga de encriptarlo)
```
kubectl create secret generic pg-admin-secret --from-literal=PG_USER_EMAIL=bi5ydXpAZ21haWwuY29t --from-literal=DB_PASSWORD=cGFzc1dvcmRTZWNyZXRv --dry-run=client -o yaml | kubectl apply -f -
```
## Editar Secret
```
kubectl create secret generic pg-admin-secret --from-literal=PG_USER_EMAIL=n.ruz@gmail.com --from-literal=DB_PASSWORD=passWordSecreto --dry-run=client -o yaml | kubectl apply -f -
```
o
```
kubectl edit secret pg-admin-5f67f497f-hz2ff
```

## Crear Deploy 
``` 
kubectl create deployment pg-admin --image=dpage/pgadmin4:6.17 --dry-run=client -o yaml > pg-admin.deployment.yml
```

## Crear Service 
```
kubectl create service nodeport pg-admin-service --tcp=80 --dry-run=client -o yaml > pg-admin.service.yml
```