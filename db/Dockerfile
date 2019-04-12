FROM postgres:11.2-alpine
# Copies the contents of the init directory into the 
# Docker entrypoint to automatically create the Database
COPY ./init/ /docker-entrypoint-initdb.d/
