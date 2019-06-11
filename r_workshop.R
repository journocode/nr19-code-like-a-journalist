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
# cmd + enter schickt Befehle in die Konsole

4 + 5
5 - 5
6 * 4
7 / 5
2^5

3 * (5 + 6)

# Logische Vergleiche ####
# boolsche Operatoren
5 >= 5
4 < 5 
5 == 3 + 2
3+2 != 7

# Zuweisung von Variablen ####

x # Variablenname, den wir aber noch nicht vergeben haben.
  # Deshalb sagt uns R, dass die Variable "x" nicht zu finden ist:
  # "Error: object 'x' not found"

x <- 3 # Mit einem Pfeil "x" den Wert 3 zuordnen
y = 5  # Das gleiche geht auch mit dem Gleichheitszeichen


x # Was steckt in x?
# Du kannst nun mit y und x rechnen:

y * x
x + 2 == y

# Wir können auch Strings (Worte) zuweisen

text = "SPAM"
text = "3"

# Nicht alles ist erlaubt bei Benennen von Zuweisungen

var_1 = 3 # funktioniert!
var-1 = 3 # funktioniert nicht!
# "Error in var - 1 = 3 : could not find function "-<-""
1var # funktioniert nicht!
# "Error: unexpected symbol in "1var""

# Variablen löschen
rm(var)
remove(var_1)



#### 1.2 Funktionen und Pakete ####


paste("SPAM", "SPAM") # paste() setzt Strings zusammen und speichert sie wieder als String

paste("Das Ergebnis von", x, "plus", y, "ist", x + y, sep = "!") 
# Man kann auch Variablen in der Funktion benutzen, und sogar andere Funktionen darin aufrufen (hier: "+")!
?paste

# Ein paar grundlegende Funktionen ####
?sum()                      # Hilfeseite aufrufen
c(3, 6, 5)                  # Zahlen zu Vektoren verbinden
sum(3, 6, 5)                # Summe berechnen

x = c(1, 7, 5, 8, 3, 22, 122)
mean(x)     # Arithmetisches Mittel
sum(x) / length(x) # Gemeinhin auch "Durchschnitt" genannt

median(x)   # Median
sort(x, TRUE)     # Wert in der Mitte der sortierten Werte


round(3.141593, 2)          # Zahl runden auf zwei Nachkommastellen.
# P.S.: Dezimalzahlen werden
# in R mit Punkten getrennt!!


#### Eigene Funktion schreiben ####

horst = function(a, b){
    paste("Das Ergebnis von", a, "plus", b, "ist", a + b)
}
#AUFGABE: Lasst euch ausgeben: "Das Ergebnis von 1 plus 5 ist 6"
horst(a = 1, b = 5)

myfunction(2, "drei") # Fehler, da x+y hier nicht berechnet werden kann

# Tipp: Möglichst deskriptive Funktionsnamen helfen dabei,
# sich zu erinnern, was die Funktion macht

#AUFGABE: Bastelt eine andere Funktion, die zwei Argumente nimmt und sie zu etwas neuem verbindet
# Beispiel: Rechnen, Sätze bilden, logische Vergleiche anstellen
horst = function(a, b){
  paste("ist", a, "das gleiche wie", b, "? ", a == b)
}

CASCAS = function(x, y){
  paste(x, "&", y, "ist gleich CASCAS")
}
CASCAS("CAS", "CAS")

aufgabe = function(a,b){
  paste("Die Zahl", a, "ist größer als die Zahl", b, "ist größer als die Summe aus", a, "und", b, "nämlich", a+b)
}
aufgabe(5, 4)
horst(8,5)

#### Pakete mit Zusatzfunktionen laden ####

install.packages("tidyverse")   # Paket installieren (Internetverbindung notwendig!)
library(tidyverse)               # Paket laden

#Noch nicht ausführen! Offline installieren für die Mittagspause
#packages = c("assertthat_0.2.1.tar.gz","cli_1.1.0.tar.gz","colorspace_1.4-1.tar.gz","crayon_1.3.4.tar.gz","digest_0.6.18.tar.gz","dplyr_0.8.0.1.tar.gz","fansi_0.4.0.tar.gz","ggplot2_3.1.1.tar.gz","glue_1.3.1.tar.gz","gtable_0.3.0.tar.gz","labeling_0.3.tar.gz","lattice_0.20-38.tar.gz","lazyeval_0.2.2.tar.gz","magrittr_1.5.tar.gz","MASS_7.3-51.4.tar.gz","Matrix_1.2-17.tar.gz","mgcv_1.8-28.tar.gz","munsell_0.5.0.tar.gz","nlme_3.1-139.tar.gz","pillar_1.3.1.tar.gz","pkgconfig_2.0.2.tar.gz","plyr_1.8.4.tar.gz","purrr_0.3.2.tar.gz","R6_2.4.0.tar.gz","RColorBrewer_1.1-2.tar.gz","Rcpp_1.0.1.tar.gz","reshape2_1.4.3.tar.gz","rlang_0.3.4.tar.gz","scales_1.0.0.tar.gz","stringi_1.4.3.tar.gz","stringr_1.4.0.tar.gz","tibble_2.1.1.tar.gz","tidyr_0.8.3.tar.gz","tidyselect_0.2.5.tar.gz","utf8_1.1.4.tar.gz","viridisLite_0.3.0.tar.gz","withr_2.1.2.tar.gz")
#install.packages(paste0("packages/",packages), repos = NULL, type = "source")


#### 1.3 Datenstrukturen ####

# Vektoren ####

vec = c(1, 2, 3.5, 4, 5)  # Kennen wir schon!

vec2 = 6:10             # Vektor aus allen Zahlen zwischen der ersten und
# der zweiten in Einer-Schritten.

c("eins", "zwei", 3)    # Sobald Strings in einem Vektor vorkommen,
# werden auch die vorkommenden Zahlen als Strings gespeichert

# Data Frames ####

df = data.frame(col1 = vec, col2 = vec2, col3 = c("a", "b", "c", "d", "e"))
# Alle Spalten müssen die gleiche Länge haben!

df        # Datensatz in Konsole anzeigen
str(df)   # Struktur vom Datensatz in der Konsole anzeigen
View(df)  # Datensatz als filter- und sortierbare Tabelle öffnen
# Tipp: Auf den Spaltennamen hovern,
# um Infos über die Spalte zu bekommen!


#### 1.4 Einfache Grafiken ####

# Punkte oder Linien
plot(df$col1, df$col2, type = "l")

# Balken
barplot(df$col2, names.arg = df$col3)


#### 1.5 Suchen & Finden ####

df[1]                       # Nimm nur die erste Spalte
df[1:3]                 # Nimm nur die erste und dritte Spalte

df[,1]                     # Nimm nur die erste Zeile
df[1, 3]                     # Erste Zeile, dritte Spalte
df[1:3,]

df["col1"]                  # Spalten können in eckigen Klammern auch
                            # mit dem Namen angesteuert werden

df$col1                     # Eine Spalte mit dem Namen
                            # ansteuern mittels $-Operator
df$col2[2]


df[1] + df[2]               # Mit Spalten rechnen

df$groko = df$col1 + df$col2  # Neue Spalte kreieren

#Berechne die Summe von allen Zahlen in der ersten Spalte auf zwei verschiedenen Wegen
sum(df$col1)
sum(df[1])
x = c(df$col1)
sum(x)

#Berechne den Durchschnitt (mean oder median) von allen Zahlen in der ersten Spalte
mean(df$col1)
median(df[,1])

#### 1.6 Lesen und Schreiben ####


# Working Directory ####
getwd()
setwd("~/Documents/Journocode/Workshops/JONA_R")
# Ohne Working Directory: R geht davon aus,
# dass wir uns im Standard-Ordner befinden 

# Speichern und Einlesen ####

# Datensatz speichern
?write.csv
write.csv(df, file = "test.csv", row.names = FALSE)  # Man kann auch u.a. das Dezimal- und das 
                                          # Spaltentrennzeichen festlegen, siehe ?write.csv

# Datensätze einlesen ####
?read.csv
btw17 = read.csv("btw17.csv", sep = ",", fileEncoding = "utf-8")
#Encoding prüfen!



#### 1.7 Spaß mit Daten: Funktionen mit dem Beispieldatensatz ausprobieren ####

# Spaltennamen-Übersicht
names(btw17)

# Wie viele Einwohner haben die Wahlkreise zusammen?
sum(btw17$Einwohner)

# Wie viele Einwohner hat ein Wahlkreis im Durchschnitt?
mean(btw17$Einwohner)

# Füge eine neue Spalte hinzu namens "Nichtwähler" (Anzahl der Wahlberechtigten minus die Anzahl der Wähler)
btw17$Nichtwähler = btw17$Wahlberechtigte - btw17$Wähler

# Was ist die höchste Anzahl Nichtwähler in einem Wahlkreis?
# Tipp: ?max()
max(btw17$Nichtwähler)

# Macht eine Grafik mit Punkten: Einkommen vs. *Anteil* FDP-Stimmen
plot(btw17$GRÜNE, btw17$Einkommen)

## Für Fortgeschrittene ##

# Was ist der höchste *Anteil* Nichtwähler?
btw17$Nichtwähler.Anteil = btw17$Nichtwähler / btw17$Wahlberechtigte
max(btw17$Nichtwähler.Anteil)
max(btw17$Nichtwähler / btw17$Wahlberechtigte)

# In welcher Zeile steht der Wahlkreis mit dem höchsten Anteil Menschen mit Migrationhintergrund?
# Tipp: ?which.max()
btw17$MigHig.Anteil = btw17$MigHig / btw17$Einwohner
which.max(btw17$MigHig / btw17$Einwohner)


# Wie heißt dieser Wahlkreis?
btw17$Wahlkreisname[which.max(btw17$MigHig / btw17$Einwohner)]
btw17[183, 2]

# Wer schon fertig ist: Denkt euch noch ein paar Fragen aus!
plot(btw17$MigHig.Anteil, btw17$AFD / btw17$Einwohner)


#### NEXT UP:
#### 2. Das Tidyverse ####


#Falls noch nicht geschehen: Pakete installieren
#install.packages(c("tidyr", "dplyr", "ggplot2"))


#### 2.1 dplyr #### 
# Wie gemacht für Datenanalyse

library(dplyr)
### Wichtigste Funktionen: ####
?filter()          # Filtern
?mutate()          # Neue Spalten berechnen
?group_by()        # Nach Werten gruppieren
?summarize()       # Nach Gruppen zusammenfassen (Pivot-Tabellen in gut)
?arrange()         # Sortieren
?left_join()       # Datensätze mergen (SVERWEIS in gut)

### Nichtwähler berechnen mit mutate
?mutate
btw17 = mutate(btw17, Nichtwähler = Wahlberechtigte - Wähler,
               MigHig.Anteil = MigHig / Einwohner)
#Man kann sogar mehrere neue Spalten hinzufügen

# AUFGABE:
# Füge eine Spalte hinzu namens "Nichtwähleranteil": "Nichtwähler" geteilt durch "Wahlberechtigte",
# und eine namens "AfD.Anteil": Zweitstimmen für die AfD geteilt durch die Gesamtanzahl "Gültige"
btw17 = mutate(btw17, Nichtwähler = Wahlberechtigte - Wähler,
               AFD.Anteil = AFD / Gültige)

# Mehrere Funktionen hintereinander ausführen ####
#Mit dplyr: Piping (%>%)!
#Tipp: Strg + Shift + M / Cmd + Shift + M macht "%>%"

btw17 = btw17 %>%
        mutate(Nichtwähler = Wahlberechtigte - Wähler) %>%
        arrange(-Nichtwähler)

# AUFGABE:
# Füge erst mit mutate() den Nichtwähler- und AfD-Anteil hinzu (wie in der Aufgabe zuvor)
# und sortiere dann absteigend nach AfD-Anteil.
btw17 = btw17 %>% 
      mutate(Nichtwähler = Wahlberechtigte - Wähler,
             AFD.Anteil = AFD / Gültige) %>% 
      arrange(-AFD.Anteil)


### "group_by" und "summarize":  Pivot-Tabellen auf Speed ###

# BEISPIEL: Was ist der Anteil Grünen-Wähler pro Bundesland? ####
btw17_bl = btw17 %>% #Mit Originaldatensatz starten
  group_by(Bundesland) %>% #Nach Bundesländern gruppieren
  summarize(GRÜNE = sum(GRÜNE), GRÜNE.Anteil = GRÜNE / sum(Gültige)) %>% #Zusammenfassen: Berechnet Anteil Grünen-Wähler jeweils für die Bundesländer
  arrange(-GRÜNE.Anteil) # Absteigend nach Anteil Grünen-Wähler sortieren

# AUFGABE:
# Erstelle einen Datensatz wie oben namens "btw17_bl" mit den Spalten:
# Bundesland, Anteil Menschen mit Migrationshintergrund zusätzlich dem *AfD.Anteil*
# Rezept:
# 1. Mit Originaldatensatz btw17 starten
# 2. Nach Bundesländern gruppieren
# 3. Zusammenfassen: Anteil Menschen mit Migrationshintergrund berechnen und AfD-Stimmen-Anteil berechnen
# 4. Sortieren: Absteigend nach Anteil Menschen mit Migrationshintergrund

btw17_bl = btw17 %>% 
  group_by(Bundesland) %>% 
  summarize(MigHig.Anteil = sum(MigHig)/sum(Einwohner),
            AFD.Anteil = sum(AFD)/sum(Gültige)) %>% 
  arrange(MigHig.Anteil)



#### 2.2 ggplot2 ####
# Die Grammatik von Grafiken

library(ggplot2)
### Wichtigste Elemente: ###
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
      geom_point(size=15, color = "pink") + # Punkte für Streudiagramm hinzufügen
      geom_text(size=5) + #Beschriftung hinzufügen
      labs(x = "Anteil Menschen mit Migrationshintergrund", y = "Stimmenanteil der AfD") + #gib dem Plot schöne Achsenbeschriftungen
      ggtitle("Im Osten gibt es wenig Menschen mit Migrationshintergrund, aber viele AfD-Wähler") +
      scale_x_continuous(limits = c(0,0.3)) +
      scale_y_continuous(limits = c(0,0.3))

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

ggplot(btw17, aes(x = MigHig/Einwohner, y = AFD/Gültige, color = Bundesland, size = Einwohner)) +
      geom_point() +
      guides(color = FALSE, size =FALSE) +
      ggtitle("Klickibunti") +
      theme_minimal() #Man kann in ggplot alles selbst gestalten. Vorgefertigte "themes" machen es einfacher.

#AUFGABE: Osten und Westen ####

# Füge eine neue Spalte zum Datensatz hinzu, die sagt: Liegt dieser Wahlkreis im Osten oder im Westen?
osten = c("Brandenburg", "Sachsen-Anhalt", "Sachsen", "Mecklenburg-Vorpommern", "Thüringen")
btw17$osten = btw17$Bundesland %in% osten

# Mach BEISPIEL 2 nochmal, nur diesmal nach Osten oder Westen eingefärbt
ggplot(btw17, aes(x = FDP/Gültige, y = Einkommen, color = osten, size = Einwohner)) +
  geom_point() +
  guides(color = FALSE, size =FALSE) +
  ggtitle("Klickibunti") +
  theme_minimal() #Man kann in ggplot alles selbst gestalten. Vorgefertigte "themes" machen es einfacher.

# Das geht auch mit Einkommen. Lege das Einkommen auf die x-Achse


#### 2.3 tidyr ####

# Die Philosophie der sauberen Daten
library(tidyr)

### Wichtigste Funktionen: ###
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
btw17_tidy = gather(btw17_tidy, key = Partei, value = Zweitstimmen, 4:9)
# Umgekehrt: Von schmal zu breit
btw17_tidy = spread(btw17_tidy, key = Partei, value = Zweitstimmen)


### AUFGABE: Mit dplyr und der gather() Funktion: Baue aus btw17 einen Datensatz mit den Spalten: ####
### Bundesland, Partei, Anteil Stimmen, Anzahl Stimmen

#Rezept:
#1. Starte mit den Spalten von btw17, die wir brauchen
btw17_tidy = btw17[,c(1:3, 11:16)] %>% #Schalte die Funktionen mit der Pipe hintereinander
#2. Datensatz umbauen: Von breit zu schmal, wie eben
      gather(key = Partei, value = Zweitstimmen, 4:9) %>% #"btw17" muss hier nicht mehr als erstes stehen
#3. Nach Bundesland und Partei gruppieren
      group_by(Bundesland, Partei) %>%    #<-- SELBST AUSFÜLLEN
#4. Zweitstimmen aufsummieren
      summarize(Zweitstimmen = sum(Zweitstimmen)) %>%    #<-- SELBST AUSFÜLLEN
#5. Nur nach Bundesland gruppieren
      group_by(Bundesland) %>% 
#6. Neue Spalte "Anteil": Zweitstimmen der Partei geteilt durch die Summe aller Zweitstimmen im Bundesland
      mutate(Anteil = Zweitstimmen/sum(Zweitstimmen))          # <-- SELBST AUSFÜLLEN


# LETZTE AUFGABE: Gestapeltes Balkendiagramm mit ggplot ####
ggplot(btw17_tidy, aes(x = Bundesland, y=Anteil, fill=Partei)) +
      geom_col() + #Balken hinzufügen
      geom_hline(aes(yintercept = 0.5)) +
      coord_flip() + #Horizontales Balkendiagramm statt vertikales Säulendiagramm
      scale_fill_manual(values = c("grey80", "grey80", "grey80", "grey80", "red", "black")) + #Parteienfarben manuell ändern. Hexa-Codes gehen auch!
      labs(x = "", y = "") + #gib dem Plot schöne Achsenbeschriftungen
      ggtitle("In 5 Bundesländern hätte die Groko keine Mehrheit mehr", subtitle = "") +#gib dem Chart einen schönen Titel
      theme_minimal() +
      guides(fill = FALSE)



### Happy coding! ###


# Dieses Tutorial basiert auf dem Crash-Kurs von Marie-Louise Timcke.
# Ihr findet ihn auf ihrem Blog unter >>> www.datentaeter.de <<<