# Mini-Projekt-M169 Anleitung
Hier ist eine Anleitung für das ausführen des Dockerfiles und das Starten der Webseite:

## Vorbereitung
Dateien aus dem Git nehmen und beide in ein Verzeichnis packen.
Dann in dieses Verzeichnis wechseln und mit der Anleitung fortfahren.

## Image bauen
docker build -t mini_projekt_webseite .

## Container starten (Port 8080, Logs lokal speichern)
docker run -d --name mini_projekt_webseite -p 8080:80 -v $(pwd)/logs:/var/log/nginx mini_projekt_webseite

## HTML Bearbeiten
docker exec -it mini_projekt_webseite bash
apt-get update && apt-get install -y nano
nano /usr/share/nginx/html/index.html
