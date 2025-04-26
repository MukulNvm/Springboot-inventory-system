# Inventory Management System - Spring Boot

A full-stack *Inventory Management System* built with *Spring Boot, connected to **MySQL (RDS)* and deployed on *AWS EC2*.

---

## Features

- Add, edit, delete, and list products
- Persistent database using MySQL (AWS RDS)
- Runs on cloud using AWS EC2
- Spring Boot with Maven build
- Professional deployment-ready architecture

---

## Tech Stack

- *Java 17*
- *Spring Boot*
- *Spring Data JPA*
- *MySQL (AWS RDS)*
- *AWS EC2*
- *Thymeleaf* (for templates)
- *Bootstrap* (frontend styling)

---

## How to Set Up (EC2 + RDS)

### 1. SSH into EC2 and Setup Environment
```bash
sudo apt update
sudo apt install unzip -y
sudo apt install mysql-server -y
sudo systemctl start mysql
sudo systemctl enable mysql

#clone and Build the project
unzip Inventory-Management-System-Spring-Boot-main.zip
cd Inventory-Management-System-Spring-Boot-main/
chmod +x mvnw
./mvnw clean install

#Update Application.properties
#In src/main/resources/application.properties:
# Database
spring.datasource.url=jdbc:mysql://<RDS-ENDPOINT>:3306/inventorydb
spring.datasource.username=imsuser
spring.datasource.password=imspassword123

# Hibernate
spring.jpa.hibernate.ddl-auto=update
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQL8Dialect

# Logging (Optional)
logging.level.org.hibernate.SQL=DEBUG
logging.level.org.hibernate.type=TRACE

# Server port
server.port=8086

#run the app
mvn spring-boot:run


