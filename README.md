# Produktkatalog (Kapitel 5.4)
><br> 

>Zusatzmaterial zum Buch [Anwendungsentwicklung auf der SAP Cloud Platform](https://www.sap-press.de/5110) erschienen im Rheinwerk Verlag. Im Falle von Problemen, prüfen Sie die [Zusatzinformationen zum Buch](https://klako.info/books/cap_sap_press_de/).
>
> **Projektstand: _Kapitel 5.4_**
>
> <br>
<br>

## Benutzung des Projekts
Führen Sie als Vorbereitung das Kommando ``npm install`` aus. Starten Sie die Services durch Eingabe des Kommandos ``cds watch``. Öffnen Sie anschließend im Browser den Link [http://localhost:4004/](http://localhost:4004/).

## Mocking von Berechtigungsrollen
In der Datei [package.json](package.json) ordnen Sie Benutzernamen und Passwörter den Benutzerrollen zu, die für einen Mockbetrieb während der Entwicklungsphase genutzt werden sollen. Wenn Sie zeitweise auf den Mockbetrieb der Authentifizierung verzichten wollen, ändern Sie die Authentifizierungsstratgie von ``mock`` auf ``dummy``.

## Hinweis
Neuere Versionen von CAP erwarten mittlerweile den ``auth``-Abschnitt in der Datei ``package.json`` unterhalb der ``requires``-Sektion anstatt auf der gleichen Ebene wie ``requires``. Für dieses Projekt wäre die cds-Konfiguration also:
```json
  "cds": {
    "requires": {
        "auth": {
          "passport": {
            "strategy": "mock",
            "users": {
                "Donald": {
                    "password": "duck",
                    "roles": ["admin"]
                },
                "Dagobert": {
                    "password": "trick",
                    "roles": ["authenticated-user"]
                }
            }
          }
        }
    }
  }
```
Wie lange CAP die bisherige Notation noch unterstützt, ist nicht bekannt.

