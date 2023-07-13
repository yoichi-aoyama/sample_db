# sample db

- 検証用のdatabase構築


# 手順

## mysql

- db構築

```shell
docker-compose up -d mysql
```

- user, db作成

```shell
sh mysql_setup.sh
```

- ddl適用dry-run

```shell
docker-compose run --rm mysqldef sh -c "mysqldef -hmysql -P3306 -uroot sample_db --dry-run < /mysqldef/mysql_sample.ddl"
```

- ddl適用

```shell
docker-compose run --rm mysqldef sh -c "mysqldef -hmysql -P3306 -uroot sample_db < /mysqldef/mysql_sample.ddl
```
