# Use an official PostgreSQL image as the base
#FROM postgres:13

# Set the environment variables
#ENV POSTGRES_USER=myuser
#ENV POSTGRES_PASSWORD=mypassword
#ENV POSTGRES_DB=mydb

# Copy the SQL scripts into the container
#COPY up-script.sql /docker-entrypoint-initdb.d/
#COPY down-script.sql /docker-entrypoint-initdb.d/

#COPY vpostquery.sql /docker-entrypoint-initdb.d/

#EXPOSE 5432

#stage 1

# Use an official PostgreSQL image as the base
FROM postgres:latest AS build


# Copy the SQL scripts into the container
COPY up-script.sql /docker-entrypoint-initdb.d/
COPY down-script.sql /docker-entrypoint-initdb.d/

COPY vpostquery.sql /docker-entrypoint-initdb.d/

EXPOSE 5432

# stage 2


FROM postgres:alpine
ENV POSTGRES_USER=myuser
ENV POSTGRES_PASSWORD=mypassword
ENV POSTGRES_DB=mydb
COPY --from=build /docker-entrypoint-initdb.d /docker-entrypoint-initdb.d
COPY --from=build /docker-entrypoint-initdb.d /docker-entrypoint-initdb.d


# Stage 1: Build stage using PostgreSQL
#FROM postgres:latest AS build
#COPY ./init.sql /docker-entrypoint-initdb.d/

# Stage 2: Final stage using a minimal PostgreSQL image
#FROM postgres:alpine
#COPY --from=build /docker-entrypoint-initdb.d /docker-entrypoint-initdb.d

