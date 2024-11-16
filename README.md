

## Requisitos previos

1. tener instalado docker desktop
2. nodejs v18 o superior
3. jenkins


## 1ra forma de ejecucion manual,  levantar el entorno de desarrollo localmente

1. clonar el repositorio e ingresar a al aplicativo


2. ejecutar el comando desde la terminal

```
docker-compose up -d
```

3. navegar a las siguientes url en tu navegador  donde esta el front de la aplicacion y agregar los games que recuerdes
nota: por defecto el puerto 80 se llama directamente 

```
localhost
```

4. Si revisas la siguiente URL con el puerto localhost:3000 mostrara un mensaje desde el servidor

```
localhost:3000
```


5. puedes consultar la base de datos de mongo en el contenedor con la siguiente URL con mongoDBcompas, dbearer, etc

```
mongodb://localhost:27017
```




## 2da forma Para ejecutar con terraform de forma local en windows es necesario tener instalado terraform


1. clonar el repositorio


2. Inicializar terraform
```
terraform init
```

3. Ejecutar terraform
```
terrafrom apply
```

4. navegar a las siguientes url en tu navegador  donde esta el front de la aplicacion y agregar los games que recuerdes
nota: por defecto el puerto 80 se llama directamente 

```
localhost
```

5. Si revisas la siguiente URL con el puerto localhost:3000 mostrara un mensaje desde el servidor

```
localhost:3000
```


6. puedes consultar la base de datos de mongo en el contenedor con la siguiente URL con mongoDBcompas, dbearer, etc

```
mongodb://localhost:27017
```


## 3ra forma de ejecucion en Jenkins en Windows

1. tener configurado jenkins
    - nodejs
    - terraform
    - docker
    - git

2. crear un pipeline de jenkins

3. Ejecutar el pipeline

    - en el servidor de jenkins

4. navegar a las siguientes url en tu navegador  donde esta el front de la aplicacion y agregar los games que recuerdes
nota: por defecto el puerto 80 se llama directamente 

```
localhost
```

5. Si revisas la siguiente URL con el puerto localhost:3000 mostrara un mensaje desde el servidor

```
localhost:3000
```


6. puedes consultar la base de datos de mongo en el contenedor con la siguiente URL con mongoDBcompas, dbearer, etc

```
mongodb://localhost:27017
```






