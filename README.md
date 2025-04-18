<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo-small.svg" width="200" alt="Nest Logo" /></a>
</p>

# Teslo API

1. Clonar proyecto
2. `yarn install`
3. Clonar el archivo `.env.template` y renombrarlo a `.env`
4. Cambiar las variables de entorno
5. Levantar la base de datos

```
docker-compose up -d
```

6. Levantar:

```
npm run start:dev
yarn start:dev

```

7. Ejecutar SEED

```
http://localhost:3000/api/seed
```

7. Contrato Swagger

```
http://localhost:3000/api
```

###### Comandos Ejecutar para contruir Imagenes de Docker ######

# Comando limpiar docker
``` 
docker-compose down
docker system prune -a --volumes -f
```
# Comando Para countruir la imagen local y prod
``` 
docker-compose build
docker-compose -f docker-compose.prod.yml build
```
# Comado para levantar imagen local y prod
```
docker-compose up -d
docker-compose -f docker-compose.prod.yml up -d
```
# Comado para subir imagen al repositorio de google cloud (GCP)
```
gcloud auth configure-docker us-central1-docker.pkg.dev
docker image push us-central1-docker.pkg.dev/teslo-shop-backend/teslo-shop-app/teslo-shop-backend
```

# Link Googloe Cloud N.ruz (CLI)

[View Teslo Shop Backend Artifact](https://console.cloud.google.com/artifacts/docker/teslo-shop-backend/us-central1/teslo-shop-app/teslo-shop-backend?invt=AbuE7w&project=teslo-shop-backend)