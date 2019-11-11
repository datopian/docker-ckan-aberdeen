# Docker Compose for the US Deparment of Education

> This is intended just as a development setup. Don't push any production specific configuration or code, specially secrets.

Based on the main [Docker Compose setup](https://github.com/okfn/docker-ckan) for CKAN.

These images and Docker Compose files are used to deploy the Aberdeen Web app. There are different compose files based on the environment.

## Run the APP

You will need to install [ckanext-aberdeen](https://github.com/ViderumGlobal/ckanext-aberdeen) in src folder to start development.

```
cd src
git clone https://github.com/ViderumGlobal/ckanext-aberdeen
```

Start the app

```
make start
```

ssh into the container 

```
make shell
```
