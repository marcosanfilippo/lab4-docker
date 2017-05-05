#Politecnico di Torino
#Applicazioni Internet 2016-17
#Prof. Giovanni Malnati
#
#
#Dockerfile basato su un'immagine di PostgreSQL con PostGIS
FROM postgres:9.6

LABEL "it.polito.ai.organization"="Politecnico di Torino" "it.polito.ai.maintainer"="FiveGroup" \
      "it.polito.ai.description"="Dockerfile basato su Postgres 9 con PostGIS 2.3 installato, \
	  costruito per la seconda esercitazione del corso di Applicazioni Internet"

#VARIABILI D'AMBIENTE
#Vengono utilizzate dall'immagine ufficiale di PostgreSQL per identificare rispettivamente:
#l'utente owner del processo, la password di quest'ultimo nel sistema, il nome del database creato, 
#la cartella che conterrà i dati del db.
ENV POSTGRES_USER="postgres" POSTGRES_PASSWORD="ai-user-password" POSTGRES_DB="socialgtt" PGDATA="/datadb"

#File che definisce lo schema del database da utilizzare per l'esercitazione
COPY schema.sql /docker-entrypoint-initdb.d/schema.sql