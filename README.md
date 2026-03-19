# Mini-Projekt-M169 Anleitung
Hier ist eine Anleitung für das ausführen des Dockerfiles und das Starten der Webseite:

# Image bauen
docker build -t mini_projekt_webseite .

# Container starten (Port 8080, Logs lokal speichern)
docker run -d -p 8080:80 -v $(pwd)/logs:/var/log/nginx mini_projekt_webseite
