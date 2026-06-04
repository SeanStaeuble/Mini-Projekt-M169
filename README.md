# Auftrag-AWS-M169 Anleitung
Hier ist eine Anleitung für das ausführen des Dockerfiles und das Starten der Webseite:

## Vorbereitung
### In Sicherheitsgruppe Ports freigeben
Port 8080 freigeben für 0.0.0.0/0

Port 8081 freigeben für 0.0.0.0/0

Port 80 freigeben für 0.0.0.0/0

Port 443 freigeben für 0.0.0.0/0

Port 22 freigeben für 0.0.0.0/0

### In der Ubuntu-Instanz mit Docker das Git clonene
git clone https://github.com/SeanStaeuble/Mini-Projekt-M169.git

# Mini-Projekt
## Image bauen
docker build -t mini_projekt_webseite .

## Container starten (Port 8080, Logs lokal speichern)
docker run -d --name mini_projekt_webseite -p 8080:80 -v $(pwd)/logs:/var/log/nginx mini_projekt_webseite

## HTML Bearbeiten
docker exec -it mini_projekt_webseite bash
apt-get update && apt-get install -y nano
nano /usr/share/nginx/html/index.html

## Verbinden auf Mini-Projekt
Verbindung mit http://"public-ip der Instanz":8080

# Wordpress
## Wordpress-Verzeichniss
cd worpress (Schreibfehler beim Verzeichnisnamen)

## Docker Compose installieren
### Abhängigkeiten installieren
sudo apt-get install -y ca-certificates curl gnupg

### Docker GPG-Key hinzufügen
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

### Docker-Repository hinzufügen
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo $VERSION_CODENAME) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

### Docker + Compose installieren
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

## Image bauen
docker compose up -d

## Verinden auf Wordpress
Verbindung mit http://"public-ip der Instanz":8081

## Wordpress installation
Installation abschliessen und Benutzer mit Passwort erstellen.

## Beispielseite von Wordpress bearbeiten
Mit Login bei Wordpress anmelden und dann Beispielseite überarbeiten.


