# Discussion of differences and similarities SQL DML, LINQ, JavaScript set manupulation

assuming the server is accessible at localhost and there is a database `mydatabase` accessible to `myuser` user, then 
database creation and database seeding

First remember the repo location

```powershell
$repo = Get-location
$pgpassword = "mypassword"
$env:PGPASSWORD=$pgpassword
```

we will use it from the terminal

```powershell
Set-Location $repo
Set-Location ./psql-db
psql -U myuser -d mydatabase -h localhost -f ./init.sql
Set-Location $repo
Set-Location  './psql-seed'
psql -U myuser -d mydatabase -h localhost -f ./accommodations-seeding.sql
```

use cleanup.sql to clean up all data

```powershell
Set-Location $repo
Set-Location './psql-db'
psql -U myuser -d mydatabase -h localhost -f ./cleanup.sql
```