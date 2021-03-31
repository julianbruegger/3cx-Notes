![GitHub repo size](https://img.shields.io/github/repo-size/julianbruegger/3cx-Notes)    ![Lines of code](https://img.shields.io/tokei/lines/github/julianbruegger/3cx-Notes)      ![GitHub all releases](https://img.shields.io/github/downloads/julianbruegger/3cx-Notes/total)        ![GitHub release (latest by date)](https://img.shields.io/github/v/release/julianbruegger/3cx-Notes)         [![GitHub stars](https://img.shields.io/github/stars/julianbruegger/3cx-Notes)](https://github.com/julianbruegger/3cx-Notes/stargazers)
# 3cx-Notes
Für die bei uns im Betrieb angewendete 3cx Telefonlösung habe ich eine Notizsoftware erstellt. 

Diese ist einfach aufgebaut und ist kinderleicht zu bedienen. Basierend ist diese auf Powershell. 
<img src="./bin/tool.png">

## Installation
Um das Tool zu Installieren sollte einfach die akutellste `Installler.EXE` heruntergeladen werden. 

[<img src="https://img.shields.io/badge/release-V2.0.0-brightgreen">](https://github.com/julianbruegger/3cx-Notes/releases/latest)



### Setup 3CX
<img src="./bin/3cx_main.png">
Im Hauptmenü werden die Einstellungen unten rechts geöffnet. 
<img src="./bin/3cx_erweitert.png">
Danach können die erweiterten Einstellungen geöffnet werden.
<img src="./bin/3cx_verhalten.png">
Im Submenü verhalten kann nun die Software hinzugefügt werden. 
<img src="./bin/3cx_settings.png">

Nun können die Einstellungen vom Printscreen übernommen werden. 

- Die Anwendung soll bei einem eingehenden Anruf gestartet werden. 
- Der Pfad zur `.EXE` Datei
- Und die Parameter sollen auch mitgegeben werden
```ps1
%CallerNumber% %CallerDisplayName%
```

## Reflexion

### Positiv

Das Programm zu schreiben war nicht anspruchsvoll. im Hintergrund verteile ich eigentlich nur `strings`.

### Schwierigkeiten

Das schwere war für mich das Generieren des GUI's. Dafür habe ich im Internet ein [Tool](https://poshgui.com/Editor?Tab=1) gefunden welches solche GUIS automatisch erstellt, bzw. ich erstelen kann. Dies hat es mir um einigis einfacer gemacht. Auch das Erstellen einer .EXE Datei war für mich neu, auch dafüpr gibt es aber ein [Tool](https://gallery.technet.microsoft.com/scriptcenter/PS2EXE-GUI-Convert-e7cb69d5) von Microsoft. 