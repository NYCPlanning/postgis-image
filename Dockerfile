FROM mdillon/postgis:latest

RUN apt update\
    && apt install -y git\
        build-essential\
        curl\
        libcurl4-gnutls-dev\
        libpq-dev\
        postgresql-server-dev-all\
        gdal-bin
        
RUN git config --global http.sslverify "false"\
    && git clone https://github.com/pramsey/pgsql-http.git\
    && cd pgsql-http\
    && make\
    && make install\
    && cd ..