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

3 * (5 + 6)^2 / 4

# Logische Vergleiche ####

5 >= 5
4 < 5 
5 == 3 + 2
3+2 != 7

# Zuweisung von Variablen ####

x # Variablenname, den wir aber noch nicht vergeben haben.
  # Deshalb sagt uns R, dass die Variable "x" nicht zu finden ist.

x = 3 # Mit einem Gleichheitszeichen kann man "x" den Wert 3 zuordnen
      # BTW: Geht auch mit "<-"


x # Was steckt in x?
# Du kannst nun mit x rechnen:

2 * x
y = 5
x + 2 == y

# Wir können auch Strings (Worte) zuweisen

text = "SPAM"
text = "3"

# Nicht alles ist erlaubt bei Benennen von Zuweisungen

var_1 = "hier könnte Ihre Werbung stehen" # funktioniert!
var-1 = "hier könnte Ihre Werbung stehen" # funktioniert nicht!
1var  = "hier könnte Ihre Werbung stehen" # funktioniert nicht!
# "Error: unexpected symbol in "1var""

# Variablen löschen
rm(var_1)
remove(var)


# Funktionen ####

paste("SPAM", "SPAM") # Die Funktion paste() setzt Strings zusammen und speichert sie wieder als String
                      # Alles, was zwischen den Klammern steht, nennt man "Argumente" oder "Parameter"
paste("Das Ergebnis von", x, "plus", y, "ist", x + y) # Man kann auch Variablen in der Funktion benutzen, und sogar andere Funktionen darin aufrufen (hier: "+")!
?paste                 # Hilfeseiten aufrufen


#### 1.2 Lesen und Schreiben ####

# Working Directory ####
getwd()
setwd("path/to/your/folder") #Shortcut: cmd + shift + H
# Ohne Working Directory: R geht davon aus,
# dass wir uns im Standard-Ordner befinden 

# Speichern und Einlesen ####

# Datensätze einlesen ####
?read.csv #Hilfeseite aufrufen
ew19 = read.csv("ew19.csv", fileEncoding = "utf-8", stringsAsFactors = F, sep = ";") # immer schön das Encoding prüfen!
# FRAGE: was müssen wir hier einstellen, damit es richtig eingelesen wird?

# Datensatz speichern
write.csv(ew19, file = "ew19_copy.csv", row.names = FALSE)  # Man kann auch u.a. das Dezimal- und das Spaltentrennzeichen festlegen, siehe ?write.csv


#### 1.3 Datenstrukturen ####

# Data Frames ####
# Tabellenförmige Datensätze

ew19     # Datensatz in Konsole anzeigen
?names() # Spaltennamen-Übersicht
?nrow()  # Anzahl der Zeilen
?head()  # Nur die ersten 6 Zeilen anzeigen lassen. FRAGE: Wie können wir uns die ersten *10* Zeilen ausgeben lassen?
?str()   # Struktur vom Datensatz in der Konsole anzeigen
?View()  # Datensatz als filter- und sortierbare Tabelle öffnen
# Tipp: Auf den Spaltennamen hovern,
# um Infos über die Spalte zu bekommen!

# In data frames ist jede Spalte ein *Vektor*

# Vektoren ####
# Reihen von Zahlen

vec = c(1, 2, 3, 4, 5)  # c() für "concatenate"
vec = 6:10             # Vektor aus allen Zahlen zwischen der ersten und der zweiten in Einer-Schritten.

# So baut man data frames selbst:
df = data.frame(col1 = 1:5, col2 = vec, col3 = c("a", "b", "c", "d", "e"))
# Alle Spalten müssen die gleiche Länge haben!


#### 1.4 Suchen & Finden ####
# Hinweis: Die meisten Programmiersprachen beginnen bei 0 mit dem zählen. R beginnt bei 1.

vec[2]              # Zweites Element von "vec". Das zwischen den eckigen Klammern nennt man "Index"
ew19[1,3]           # Erste Zeile, dritte Spalte
                    # Data Frames haben zwei Dimensionen, deshalb brauchen wir zwei Indizes, um ein Element zu finden
ew19[,2]            # Nimm nur die zweite Spalte

#FRAGE: Was bewirken wohl die folgenden Zeilen?
ew19[3,]
ew19[,2:4]
ew19[c(15,55),]

# Noch einfacher: Der Dollar-Operator

ew19$kreisname               # Eine Spalte mit dem Namen ansteuern mittels $-Operator. Das Resultat ist ein Vektor
# FRAGE: Wie bekomme ich mithilfe des Dollar-Operators wohl das dritte Element von den Kreisnamen?


#### 1.5 Rechnen mit Datensätzen ####

ew19$Groko = ew19$Union + ew19$SPD     # Mit Spalten kann man auch rechnen!

# AUFGABE: Füge eine neue Spalte hinzu namens "Gruene.anteil", die den Stimmanteil der Grünen wiedergibt.
#          ACHTUNG: Welche Spalten brauchst du dafür?


# Einige hilfreiche Funktionen

sum()    # Summe ausrechnen 
mean()   # Arithmetisches Mittel
median() # Median
max()    # Maximum
min()    # Minimum


# Wie viele Einwohner haben die Landkreise zusammen? Ergibt diese Zahl Sinn?

# Wie viele Einwohner hat ein Landkreis im Durchschnitt?

# Was ist der höchste Grünen-Wähler-Anteil?

# In welcher Zeile steht der Landkreis mit dem höchsten Anteil an Grünen-Wählern?
# Tipp: ?which.max()

# BONUS: Wie heißt dieser Landkreis?


#### 1.6 Einfache Grafiken ####

# Punkte oder Linien
plot(ew19$junge, ew19$alte)

# Balken
barplot(ew19$einwohner[1:10], names.arg = ew19$kreisname[1:10])

# Macht eine Grafik mit Punkten:

# Anteil junger Leute vs. Anteil Grünen-Stimmen
plot(ew19$einkommen, ew19$FDP / ew19$gueltige)

# BONUS: Anteil junger Leute vs. *Anteil* Stimmen für Volt Deutschland


#### 1.7 Pakete mit Zusatzfunktionen laden ####
# Für Teil 2 bitte machen! :)

install.packages("tidyverse")   # Paket installieren (Internetverbindung notwendig!)
library(tidyverse)              # Paket laden


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
ew19 = mutate(ew19, Nichtwähler = Wahlberechtigte - Wähler,
               MigHig.Anteil = MigHig / Einwohner)
#Man kann sogar mehrere neue Spalten hinzufügen

# AUFGABE:
# Füge eine Spalte hinzu namens "Nichtwähleranteil": "Nichtwähler" geteilt durch "Wahlberechtigte",
# und eine namens "AfD.Anteil": Zweitstimmen für die AfD geteilt durch die Gesamtanzahl "Gültige"
ew19 = mutate(ew19, Nichtwähler = Wahlberechtigte - Wähler,
               AFD.Anteil = AFD / Gültige)

# Mehrere Funktionen hintereinander ausführen ####
#Mit dplyr: Piping (%>%)!
#Tipp: Strg + Shift + M / Cmd + Shift + M macht "%>%"

ew19 = ew19 %>%
        mutate(Nichtwähler = Wahlberechtigte - Wähler) %>%
        arrange(-Nichtwähler)

# AUFGABE:
# Füge erst mit mutate() den Nichtwähler- und AfD-Anteil hinzu (wie in der Aufgabe zuvor)
# und sortiere dann absteigend nach AfD-Anteil.
ew19 = ew19 %>% 
      mutate(Nichtwähler = Wahlberechtigte - Wähler,
             AFD.Anteil = AFD / Gültige) %>% 
      arrange(-AFD.Anteil)


### "group_by" und "summarize":  Pivot-Tabellen auf Speed ###

# BEISPIEL: Was ist der Anteil Grünen-Wähler pro Bundesland? ####
ew19_bl = ew19 %>% #Mit Originaldatensatz starten
  group_by(Bundesland) %>% #Nach Bundesländern gruppieren
  summarize(GRÜNE = sum(GRÜNE), GRÜNE.Anteil = GRÜNE / sum(Gültige)) %>% #Zusammenfassen: Berechnet Anteil Grünen-Wähler jeweils für die Bundesländer
  arrange(-GRÜNE.Anteil) # Absteigend nach Anteil Grünen-Wähler sortieren

# AUFGABE:
# Erstelle einen Datensatz wie oben namens "ew19_bl" mit den Spalten:
# Bundesland, Anteil Menschen mit Migrationshintergrund zusätzlich dem *AfD.Anteil*
# Rezept:
# 1. Mit Originaldatensatz ew19 starten
# 2. Nach Bundesländern gruppieren
# 3. Zusammenfassen: Anteil Menschen mit Migrationshintergrund berechnen und AfD-Stimmen-Anteil berechnen
# 4. Sortieren: Absteigend nach Anteil Menschen mit Migrationshintergrund

ew19_bl = ew19 %>% 
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

ggplot(ew19_bl, aes(x = MigHig.Anteil, y = AFD.Anteil, label = Bundesland)) + #Spalten auf die Dimensionen der Grafik verteilen
      geom_point(size=15, color = "pink") + # Punkte für Streudiagramm hinzufügen
      geom_text(size=5) + #Beschriftung hinzufügen
      labs(x = "Anteil Menschen mit Migrationshintergrund", y = "Stimmenanteil der AfD") + #gib dem Plot schöne Achsenbeschriftungen
      ggtitle("Im Osten gibt es wenig Menschen mit Migrationshintergrund, aber viele AfD-Wähler") +
      scale_x_continuous(limits = c(0,0.3)) +
      scale_y_continuous(limits = c(0,0.3))

#FRAGE: Was erkennt man hier?

#Ein genauerer Blick auf die einzelnen Landkreise.
#BEISPIEL 2: Scatterplot: Anteil Menschen mit Migrationshintergrund vs. AfD-Anteil pro Landkreis, ####
#            eingefärbt nach Bundesland, Größe nach Anzahl der Wähler
# Anforderungen: 
#  für jeden Landkreis soll ein Punkt da sein
#  auf der x-Achse soll der Anteil Menschen mit Migrationshintergrund sein
#  auf der y-Achse soll der AfD-Anteil sein
#  jeder Punkt soll nach dem Bundesland eingefärbt sein
#  die Größe des Punktes soll sich nach der Anzahl Wähler im Landkreis richten

ggplot(ew19, aes(x = MigHig/Einwohner, y = AFD/Gültige, color = Bundesland, size = Einwohner)) +
      geom_point() +
      guides(color = FALSE, size =FALSE) +
      ggtitle("Klickibunti") +
      theme_minimal() #Man kann in ggplot alles selbst gestalten. Vorgefertigte "themes" machen es einfacher.

#AUFGABE: Osten und Westen ####

# Füge eine neue Spalte zum Datensatz hinzu, die sagt: Liegt dieser Landkreis im Osten oder im Westen?
osten = c("Brandenburg", "Sachsen-Anhalt", "Sachsen", "Mecklenburg-Vorpommern", "Thüringen")
ew19$osten = ew19$Bundesland %in% osten

# Mach BEISPIEL 2 nochmal, nur diesmal nach Osten oder Westen eingefärbt
ggplot(ew19, aes(x = FDP/Gültige, y = Einkommen, color = osten, size = Einwohner)) +
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
ew19_tidy = ew19[,c(1:3, 11:16)] #Alle überflüssigen Infos weglassen
names(ew19_tidy) #Probe: Schauen, welche Spalten noch da sind

# BEISPIEL: tidyr in Action ####
# Datensatz umbauen: Von breit zu schmal
ew19_tidy = gather(ew19_tidy, key = Partei, value = Zweitstimmen, 4:9)
# Umgekehrt: Von schmal zu breit
ew19_tidy = spread(ew19_tidy, key = Partei, value = Zweitstimmen)


### AUFGABE: Mit dplyr und der gather() Funktion: Baue aus ew19 einen Datensatz mit den Spalten: ####
### Bundesland, Partei, Anteil Stimmen, Anzahl Stimmen

#Rezept:
#1. Starte mit den Spalten von ew19, die wir brauchen
ew19_tidy = ew19[,c(1:3, 11:16)] %>% #Schalte die Funktionen mit der Pipe hintereinander
#2. Datensatz umbauen: Von breit zu schmal, wie eben
      gather(key = Partei, value = Zweitstimmen, 4:9) %>% #"ew19" muss hier nicht mehr als erstes stehen
#3. Nach Bundesland und Partei gruppieren
      group_by(Bundesland, Partei) %>%    #<-- SELBST AUSFÜLLEN
#4. Zweitstimmen aufsummieren
      summarize(Zweitstimmen = sum(Zweitstimmen)) %>%    #<-- SELBST AUSFÜLLEN
#5. Nur nach Bundesland gruppieren
      group_by(Bundesland) %>% 
#6. Neue Spalte "Anteil": Zweitstimmen der Partei geteilt durch die Summe aller Zweitstimmen im Bundesland
      mutate(Anteil = Zweitstimmen/sum(Zweitstimmen))          # <-- SELBST AUSFÜLLEN


# LETZTE AUFGABE: Gestapeltes Balkendiagramm mit ggplot ####
ggplot(ew19_tidy, aes(x = Bundesland, y=Anteil, fill=Partei)) +
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