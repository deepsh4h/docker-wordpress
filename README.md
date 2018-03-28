# docker-wordpress
Wordpress on Docker [Development and Production]


## Getting started

### Prerequisites

The only prerequisite is you should have Docker installed

### Installation

1. Git clone this repository
2. Make sure docker is installed
3. RUN THE COMMAND 
```
docker-compose up --build -d
```
4. Login to wordpress by visiting http://localhost/wp-admin
```
Username: admin
Password: fY7GjKSOlBHI0C*o!tinGJOz
```

# Backing up the database

## Backup
```
docker exec CONTAINER /usr/bin/mysqldump -u root --password=root -B wordpress > wordpress.sql
```

## Restore (If you do want to restore manually when docker is already running or else docker compose does restore it for you)
```
cat wordpress.sql | docker exec -i CONTAINER /usr/bin/mysql -u root --password=root wordpress
```