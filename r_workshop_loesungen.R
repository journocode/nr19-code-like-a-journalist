#  _______  __  .__   __.  _______  _   _ __    __  .______       __    __  .__   __.   _______     __  .__   __.    .______      
# |   ____||  | |  \ |  | |   ____|(_) (_)  |  |  | |   _  \     |  |  |  | |  \ |  |  /  _____|   |  | |  \ |  |    |   _  \     
# |  |__   |  | |   \|  | |  |__    _   _|  |__|  | |  |_)  |    |  |  |  | |   \|  | |  |  __     |  | |   \|  |    |  |_)  |    
# |   __|  |  | |  . `  | |   __|  | | | |   __   | |      /     |  |  |  | |  . `  | |  | |_ |    |  | |  . `  |    |      /     
# |  |____ |  | |  |\   | |  |     | |_| |  |  |  | |  |\  \----.|  `--'  | |  |\   | |  |__| |    |  | |  |\   |    |  |\  \----.
# |_______||__| |__| \__| |__|      \__,_|__|  |__| | _| `._____| \______/  |__| \__|  \______|    |__| |__| \__|    | _| `._____|
#                                                                                                                                 


# Tipp: Alt + Shift + K zeigt alle verfügbaren Keyboard Shortcuts an

# Kommentar

5  # Zahl



#### 1.1 Basics ####


# R als Taschenrechner ####

5 + 2       # Addition
7 - 4       # Substraktion

6 * 8       # Multiplikation
9 / 3       # Division

(9 - 3) * 8 # Es gelten die ganz normalen Regeln der Mathematik

3 ^ 2       #
3 ** 2


# Logische Vergleiche ####

5 == 2          # Ist 5 das gleiche wie 2?
5 != 2          # Ist 5 NICHT das gleiche wie 2?

5 > 2           # Ist 5 größer als 2?
5 >= 2          # Ist 5 größer oder gleich 2?

3 ^ 2 == 3 ** 2 # Ist das wirklich das gleiche? 


# Zuweisung von Variablen ####

x # Variablenname, den wir aber noch nicht vergeben haben.
  # Deshalb sagt uns R, dass die Variable "x" nicht zu finden ist:
  # "Error: object 'x' not found"

x <- 3 # Mit einem Pfeil "x" den Wert 3 zuordnen
y = 5  # Das gleiche geht auch mit dem Gleichheitszeichen

x # Was steckt in x?

# Du kannst nun mit y und x rechnen:

x + y
xy = x + y
xy

# Wir können auch Strings zuweisen

text = "SPAM"



# Nicht alles ist erlaubt bei Benennen von Zuweisungen

var_1 = 3 # funktioniert!
var-1 = 3 # funktioniert nicht!
# "Error in var - 1 = 3 : could not find function "-<-""
1var # funktioniert nicht!
# "Error: unexpected symbol in "1var""

# Variablen löschen
rm(var_1)
remove(var_1)



#### 1.2 Funktionen und Pakete ####


paste("SPAM", "SPAM") # paste() setzt Strings zusammen und speichert sie wieder als String
paste("Das Ergebnis von", x, "plus", y, "ist", x + y) 
# Man kann auch Variablen in der Funktion benutzen, und sogar andere Funktionen darin aufrufen (hier: "+")!


# Ein paar grundlegende Funktionen ####

?sum()                      # Hilfeseite aufrufen
c(3, 6, 5)                  # Zahlen zu Vektoren verbinden
sum(3, 6, 5)                # Summe berechnen

x = c(1, 7, 5, 8, 3, 22, 122)
mean(x)     # Arithmetisches Mittel
sum(x) / length(x) # Gemeinhin auch "Durchschnitt" genannt

median(x)   # Median
sort(x)     # Wert in der Mitte der sortierten Werte

round(3.141593, 2)          # Zahl runden auf zwei Nachkommastellen.
                            # P.S.: Dezimalzahlen werden
                            # in R mit Punkten getrennt!!


# Eigene Funktion schreiben ####

myfunction = function(x, y){
      paste("Das Ergebnis von", x, "plus", y, "ist", x + y)
}

myfunction(1, 5)
myfunction(-5, 4)
myfunction(2, "drei") # Fehler, da x+y hier nicht berechnet werden kann

# Möglichst deskriptive Funktionsnamen helfen dabei,
# sich zu erinnern, was die Funktion macht
was_ist_groesser = function(x, y){
  ifelse(x > y, return(x), return(y)) # Bedingter Output
}

was_ist_groesser(3, 4)
was_ist_groesser(4, 3)

# RStudio ist so clever, dass es eure geschriebenen
# Funktionen im Inhaltsverzeichnis vermerkt,
# um sie leichter wiederzufinden

# Pakete mit Zusatzfunktionen laden ####

#install.packages("tidyverse")   # Paket installieren (Internetverbindung notwendig!)
library(tidyverse)               # Paket laden


#### 1.3 Datenstrukturen ####

# Vektoren ####

vec = c(1, 2, 3, 4, 5)  # Kennen wir schon!

vec2 = 6:10             # Vektor aus allen Zahlen zwischen der ersten und
                        # der zweiten in Einer-Schritten.

c("eins", "zwei", 3)    # Sobald Strings in einem Vektor vorkommen,
                        # werden auch die vorkommenden Zahlen als Strings gespeichert

# Data Frames ####

df = data.frame(col1 = vec, col2 = vec2, col3 = c("a", "b", "c", "d", "e"))
# Alle Spalten müssen die gleiche Länge haben!

df        # Datensatz in Konsole anzeigen
View(df)  # Datensatz als filter- und sortierbare Tabelle öffnen
          # Tipp: Auf den Spaltennamen hovern,
          # um Infos über die Spalte zu bekommen!




#### 1.4 Suchen & Finden ####

df[1]                       # Nimm nur die erste Spalte
df[1:2]                     # Nimm nur die ersten beiden Spalten
df[c(1, 3)]                 # Nimm nur die erste und dritte Spalte

df[1, ]                     # Nimm nur die erste Zeile
df[1,3]                     # Erste Zeile, dritte Spalte

df[1] + df[2]               # Mit Spalten rechnen

df["col1"] + 1              # Spalten können in eckigen Klammern auch
                            # mit dem Namen angesteuert werden

df$col1                     # Eine Spalte mit dem Namen
                            # ansteuern mittels $-Operator

df$neu = df$col1 + df$col2 # Neue Spalte kreieren

sum(df[1])
sum(df$col1)

mean(df$col1)
median(df$col1)




#### 1.5 Lesen und Schreiben ####


# Working Directory ####

# Ohne Working Directory: R geht davon aus,
# dass wir uns im Standard-Ordner befinden 
btw17 = read.csv("btw17.csv")

# Working Directory setzen
setwd("Pfad/zu/meinem/Ordner")
# Working Directory abrufen
getwd()

# Mit Working Directory: Ich kann Dateien direkt im Ordner aufrufen
btw17 = read.csv("btw17.csv")


# Speichern und Einlesen ####

# Datensatz speichern und einlesen
?write.csv
write.csv(df, "test.csv", row.names = F)  # Man kann auch u.a. das Dezimal- und das 
                                          # Spaltentrennzeichen festlegen, siehe ?write.csv


#### 1.6 Spaß mit Daten: Funktionen mit dem Beispieldatensatz ausprobieren ####

# Spaltennamen-Übersicht
names(btw17)

# Wie viele Einwohner haben die Wahlkreise zusammen?
sum(btw17$Einwohner) #82175300 -> ca. 82 Mio.

# Wie viele Einwohner hat ein Wahlkreis im Durchschnitt?
mean(btw17$Einwohner) #274 Tausend
median(btw17$Einwohner) #217 Tausend

# Füge eine neue Spalte hinzu namens "Nichtwähler" (Anzahl der Wahlberechtigten
# Zweitstimmen minus die Anzahl der Zweitstimmen-Wähler)
btw17$Nichtwähler = btw17$Wahlberechtigte - btw17$Wähler

# Was ist die höchste Anzahl Nichtwähler in einem Wahlkreis?
max(btw17$Nichtwähler) #76455

# Macht eine Grafik mit Punkten: Einkommen vs. *Anteil* FDP-Stimmen
plot(btw17$Einkommen, btw17$FDP/btw17$Gültige)
#Was kann man daraus ablesen?

## Für Fortgeschrittene ##

# Was ist der höchste *Anteil* Nichtwähler?
max(btw17$Nichtwähler / btw17$Wahlberechtigte) #0.3526753 -> 35 %

# Füge eine neue Spalte namens MigHig.Anteil hinzu für den Anteil Menschen mit Migrationhintergrund?
btw17$MigHig.Anteil = btw17$MigHig / btw17$Einwohner

# In welcher Zeile steht der Wahlkreis mit dem höchsten Anteil Menschen mit Migrationhintergrund?
?which.max #Tipp
which.max(btw17$MigHig.Anteil) #nr 183

# Wie heißt dieser Wahlkreis?
btw17[183, 2] #Frankfurt am Main I

# Wer schon fertig ist: Denkt euch noch ein paar Fragen aus!



#### NEXT UP:
#### 2. Das Tidyverse ####


#Falls noch nicht geschehen: Pakete installieren
#install.packages(c("tidyr", "dplyr", "ggplot2"))


#### 2.1 dplyr #### 
# Wie gemacht für Datenanalyse

library(dplyr)
### Wichtigste Funktionen: ###
?filter()          # Filtern
?mutate()          # Neue Spalten berechnen
?group_by()        # Nach Werten gruppieren
?summarize()       # Nach Gruppen zusammenfassen (Pivot-Tabellen in gut)
?arrange()         # Sortieren
?left_join()       # Datensätze mergen (SVERWEIS in gut)

### Nichtwähler berechnen mit mutate
?mutate
btw17 = mutate(btw17, Nichtwähler = Wahlberechtigte - Wähler)
#Man kann sogar mehrere neue Spalten hinzufügen

# AUFGABE:
# Füge eine Spalte hinzu namens "Nichtwähleranteil": "Nichtwähler" geteilt durch "Wahlberechtigte",
# und eine namens "AFD.Anteil": Zweitstimmen für die AfD geteilt durch die Gesamtanzahl gültiger Stimmen
btw17 = mutate(btw17,
               Nichtwähleranteil = Nichtwähler / Wahlberechtigte, 
               AFD.Anteil = AFD / Gültige)

# Mehrere Funktionen hintereinander ausführen ####

#OPTION 1: Mehrere Zeilen --> Verbraucht Platz
btw17 = mutate(btw17, Nichtwähler = Wahlberechtigte - Wähler)
btw17 = arrange(btw17, Nichtwähler)

#OPTION 2: Schachteln --> Unübersichtlich
btw17 = arrange( mutate(btw17, Nichtwähler = Wahlberechtigte - Wähler), Nichtwähler)

#OPTION 3 mit dplyr: Piping (%>%) --> Viel schöner!
#Tipp: Strg + Shift + M / Cmd + Shift + M
btw17 = btw17 %>%
        mutate(Nichtwähler = Wahlberechtigte - Wähler) %>%
        arrange(-Nichtwähler)

# AUFGABE:
# Füge erst mit mutate() den Nichtwähler- und AfD-Anteil hinzu (wie in der Aufgabe zuvor)
# und sortiere dann absteigend nach AfD-Anteil.
btw17 = btw17 %>% 
      mutate(Nichtwähleranteil = Nichtwähler / Wahlberechtigte, 
             AFD.Anteil = AFD / Gültige) %>% 
      arrange(-AFD.Anteil)

### "group_by" und "summarize":  Pivot-Tabellen auf Speed ###

# BEISPIEL: Was ist der Anteil Grünen-Wähler pro Bundesland? ####
btw17_bl = btw17 %>% #Mit Originaldatensatz starten
            group_by(Bundesland) %>% #Nach Bundesländern gruppieren
            summarize(GRÜNE = sum(GRÜNE), GRÜNE.Anteil = GRÜNE / sum(Einwohner)) %>% #Zusammenfassen: Berechnet Anteil Grünen-Wähler jeweils für die Bundesländer
            arrange(-GRÜNE) # Absteigend nach Anteil Grünen-Wähler sortieren

# AUFGABE:
# Erstelle einen Datensatz wie oben namens "btw17_bl" mit den Spalten:
# Bundesland, Anteil Menschen mit Migrationshintergrund und AFD-Anteil
# Rezept:
# 1. Mit Originaldatensatz btw17 starten
# 2. Nach Bundesländern gruppieren
# 3. Zusammenfassen: Anteil Menschen mit Migrationshintergrund berechnen und AfD-Stimmen-Anteil berechnen
# 4. Sortieren: Absteigend nach Anteil Menschen mit Migrationshintergrund
btw17_bl = btw17 %>%
      group_by(Bundesland) %>% #Nach Bundesländern gruppieren
      summarize(MigHig.Anteil = sum(MigHig) / sum(Einwohner),
                AFD.Anteil= sum(AFD) / sum(Gültige)) %>%
      arrange(-MigHig.Anteil)


#### 2.2 ggplot2 ####
# Die Grammatik von Grafiken

library(ggplot2)
### Wichtigste Elemente: ####
# Teilt Plots in Bauteile auf, die einzeln eingestellt werden: Achsen, Legenden, Titel, Formen, ...
#+          #Wie die Pipe bei dplyr werden hier die Schritte durch ein "+" verbunden 
?ggplot()   #Startfunktion. Da stellt man den Datensatz ein und die Grundeinstellungen
?aes()      #Innerhalb von ggplot(): Einstellen, welches Merkmal durch welche Dimension der Grafik dargestellt wird
#geom_xx    #Grafiktypen hinzufügen. Man kann auch mehrere nehmen,
            #z.B. "geom_point" (Scatterplot), "geom_abline" (gerade Linie) und "geom_text" (Text/Beschriftung)


#Ziel: Gibt es einen Zusammenhang zwischen dem Anteil Menschen mit Migrationshintergrund und dem AfD-Anteil?
## ACHTUNG: Korrelation != Kausalität !!!

#BEISPIEL: Scatterplot (Streudiagramm): Anteil Menschen mit Migrationshintergrund vs. AfD-Anteil pro Bundesland ####
# Anforderungen: 
#  für jedes Bundesland soll ein Punkt da sein
#  auf der x-Achse soll der Anteil Menschen mit Migrationshintergrund sein
#  auf der y-Achse soll der AfD-Anteil sein
#  jeder Punkt soll mit dem Namen des Bundeslandes beschriftet sein

ggplot(btw17_bl, aes(x = MigHig.Anteil, y = AFD.Anteil, label = Bundesland)) + #Spalten auf die Dimensionen der Grafik verteilen
      geom_point(size=5, color = "orange") + # Punkte für Streudiagramm hinzufügen
      geom_text(hjust=0.5, vjust = 2) + #Beschriftung hinzufügen
      labs(x = "Anteil Menschen mit Migrationshintergrund", y = "Stimmenanteil der AfD") + #gib dem Plot schöne Achsenbeschriftungen
      ggtitle("Im Osten gibt es wenig Menschen mit Migrationshintergrund, aber viele AfD-Wähler") #gib dem Chart einen schönen Titel

#FRAGE: Was erkennt man hier?

#Ein genauerer Blick auf die einzelnen Wahlkreise.
#BEISPIEL 2: Scatterplot: Anteil Menschen mit Migrationshintergrund vs. AfD-Anteil pro Wahlkreis, ####
#            eingefärbt nach Bundesland, Größe nach Anzahl der Wähler
# Anforderungen: 
#  für jeden Wahlkreis soll ein Punkt da sein
#  auf der x-Achse soll der Anteil Menschen mit Migrationshintergrund sein
#  auf der y-Achse soll der AfD-Anteil sein
#  jeder Punkt soll nach dem Bundesland eingefärbt sein
#  die Größe des Punktes soll sich nach der Anzahl Wähler im Wahlkreis richten

ggplot(btw17, aes(x = MigHig/Einwohner, y = AFD.Anteil, color = Bundesland, size = Wähler)) +
      geom_point() #+
      #theme_minimal() #Man kann in ggplot alles selbst gestalten. Vorgefertigte "themes" machen es einfacher.

#AUFGABE: Osten und Westen ####

# Füge eine neue Spalte zum Datensatz hinzu, die sagt: Liegt dieser Wahlkreis im Osten oder im Westen?
osten = c("Brandenburg", "Sachsen-Anhalt", "Sachsen", "Mecklenburg-Vorpommern", "Thüringen")
btw17$osten = btw17$Bundesland %in% osten

# Mach BEISPIEL 2 nochmal, nur diesmal nach Osten oder Westen eingefärbt
ggplot(btw17, aes(x = MigHig/Einwohner, y = AFD.Anteil, color = osten, size = Wähler)) + geom_point()
# Das geht auch mit Einkommen. Lege das Einkommen auf die x-Achse

#### 2.3 tidyr ####
# Die Philosophie der sauberen Daten
library(tidyr)

### Wichtigste Funktionen: ####
?gather()   #Datensatz umbauen: Von breit zu schmal --> Spalten in Zeilen transponieren
?spread()   #Umgekehrt: Von schmal zu breit --> Zeilen in Spalten transponieren
#Konzept tidy Data: Jede Spalte ist ein Merkmal. Jede Zeile ist ein Datenpunkt und enthält Infos zu jedem Merkmal.

#ZIEL:      Gestapeltes Balkendiagramm: Ein Balken pro Bundesland, aufgeteilt nach Anteil Stimmen pro Partei.
#Das heißt: Wir brauchen einen Datensatz mit den Spalten: Bundesland, Partei, Anteil Stimmen, Anzahl Stimmen
#Problem:   Die Parteien sind momentan eigene Spalten: Das klappt nicht für ggplot --> kein tidy data Format.
#Also:      "Schmaler" Datensatz (wenig Spalten) statt "Breiter Datensatz" (viele Spalten)

#Der Einfachheit halber: Behalten wir einmal nur die Spalten mit den Zweitstimmen pro Partei.
btw17_tidy = btw17[,c(1:3, 11:16)] #Alle überflüssigen Infos weglassen
names(btw17_tidy) #Probe: Schauen, welche Spalten noch da sind

# BEISPIEL: tidyr in Action ####
# Datensatz umbauen: Von breit zu schmal
btw17_tidy = gather(btw17_tidy, Partei, Zweitstimmen, 4:9)
# Umgekehrt: Von schmal zu breit
btw17_tidy = spread(btw17_tidy, Partei, Zweitstimmen)


### AUFGABE: Wir wollen alle Stimmanteile bequem auf einmal ausrechnen. ####
### Mit dplyr und der gather() Funktion: Baue aus btw17 einen Datensatz mit den Spalten:
### Bundesland, Partei, Anteil Stimmen, Anzahl Stimmen

#Rezept:
#1. Starte mit den Spalten von btw17, die wir brauchen
btw17_tidy = btw17[,c(1:3, 11:16)] %>% #Schalte die Funktionen mit der Pipe hintereinander
#2. Datensatz umbauen: Von breit zu schmal, wie eben
      gather(Partei, Zweitstimmen, 4:9) %>% #"btw17" muss hier nicht mehr als erstes stehen
#3. Nach Bundesland und Partei gruppieren
      group_by(Bundesland, Partei) %>%    #<-- SELBST AUSFÜLLEN
#4. Zweitstimmen aufsummieren
      summarize(Zweitstimmen = sum(Zweitstimmen)) %>%    #<-- SELBST AUSFÜLLEN
#5. Nur nach Bundesland gruppieren
      group_by(Bundesland) %>% 
#6. Neue Spalte "Anteil": Zweitstimmen der Partei geteilt durch die Summe aller Zweitstimmen im Bundesland
      mutate(Anteil = Zweitstimmen / sum(Zweitstimmen))          # <-- SELBST AUSFÜLLEN


# LETZTE AUFGABE: Gestapeltes Balkendiagramm mit ggplot ####
farben = c("#2a8fc6", "#f0c80f", "#6ea500", "#ce368d", "#be232d", "black")
ggplot(btw17_tidy, aes(x = Bundesland, y=Anteil, fill=Partei)) +
      geom_col() +
      geom_hline(aes(yintercept = 0.5)) + #Linie an der 50-Prozent-Marke
      coord_flip() + #Horizontales Balkendiagramm statt vertikales Säulendiagramm
      scale_fill_manual(values = farben) + #Parteienfarben manuell ändern. Hexa-Codes gehen auch!
      labs(x = "Stimmenanteil", y = "") + #gib dem Plot schöne Achsenbeschriftungen
      ggtitle("In 5 Bundesländern hätte die Groko keine Mehrheit mehr",
              subtitle = "Stimmanteile in der Bundestagswahl nach Partei") #gib dem Chart einen schönen Titel


### Happy coding! ###


# Dieses Tutorial basiert auf dem Crash-Kurs von Marie-Louise Timcke.
# Ihr findet ihn auf ihrem Blog unter >>> www.datentaeter.de <<<