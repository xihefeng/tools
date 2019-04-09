docker run -e 'ACCEPT_EULA=Y' -e 'MSSQL_SA_PASSWORD=1234qwerASDF@1' -p 1401:1433 -v  $PWD/sqldata:/var/opt/mssql --name sqlserver -d microsoft/mssql-server-linux:2017-latest
