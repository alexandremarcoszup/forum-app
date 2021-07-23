# forum-app
Projeto Spring/Java com escopo de um fórum

## ENVIROMENT_VARIABLES
### RUNNING LOCAL
´´´
    --spring.profiles.active=dev

´´´
### RUNNIG PROD
#### Using this variables
* export DATABASE_URL=jdbc:mysql://localhost:3306/aluraForum
* export DATABASE_USERNAME=root
* export DATEBASE_PASSWORD=28101998
* export FORUM_SECRET=123456
#### Or using jvm options
* -DDATABASE_URL=jdbc:mysql://localhost:3306/aluraForum -DDATABASE_USERNAME=root -DDATEBASE_PASSWORD=28101998 -DFORUM_SECRET=123456

### RUNNING USING this comand
* java -jar -Dspring.profiles.active=prod -DDATABASE_URL=jdbc:mysql://localhost:3306/aluraForum -DDATABASE_USERNAME=root -DDATEBASE_PASSWORD=28101998 -DFORUM_SECRET=123456 FORUM-APP.jar

### FOR DOCKER RUN

* docker run -p 8080:8080 -e SPRING_PROFILES_ACTIVE='prod' -e DATABASE_URL='jdbc:mysql://localhost:3306/aluraForum' -e DATABASE_USERNAME='root' -e DATEBASE_PASSWORD='28101998' -e FORUM_SECRET='123456'
