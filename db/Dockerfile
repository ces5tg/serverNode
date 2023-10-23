FROM mcr.microsoft.com/mssql/server:2022-latest 


# Establece las variables de entorno

ENV SA_PASSWORD=MyP@ssw0rd2023
ENV ACCEPT_EULA=Y

COPY script.sql /usr/src/app/

# Exponer el puerto 1433
EXPOSE 1433

RUN /opt/mssql/bin/sqlservr --accept-eula & \
    (while :; do if /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P $SA_PASSWORD -Q "SELECT 1"; then break; fi; sleep 30; done) && \
    /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P $SA_PASSWORD -i /usr/src/app/script.sql && \
    pkill sqlservr
