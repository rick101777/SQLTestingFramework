podman run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=TemporaryPass123" -p 1433:1433 -d mcr.microsoft.com/mssql/server
#sleep 10
#python ./SQL/db_setup.py