# Mini-Projekt-M169 Anleitung
Hier ist eine Anleitung für das ausführen des Dockerfiles und das Starten der Webseite:

## Vorbereitung
# In Sicherheitsgruppe Ports freigeben
Port 8080 freigeben für 0.0.0.0/0
Port 8081 freigeben für 0.0.0.0/0
Port 80 freigeben für 0.0.0.0/0
Port 443 freigeben für 0.0.0.0/0
Port 22 freigeben für 0.0.0.0/0
# In der Ubuntu-Instanz mit Docker das Git clonene
git clone https://github.com/SeanStaeuble/Mini-Projekt-M169.git

## Image bauen
docker build -t mini_projekt_webseite .

## Container starten (Port 8080, Logs lokal speichern)
docker run -d --name mini_projekt_webseite -p 8080:80 -v $(pwd)/logs:/var/log/nginx mini_projekt_webseite

## HTML Bearbeiten
docker exec -it mini_projekt_webseite bash
apt-get update && apt-get install -y nano
nano /usr/share/nginx/html/index.html
