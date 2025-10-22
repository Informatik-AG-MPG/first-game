# "Code herunterladen" / Repository clonen
```
git clone https://github.com/Informatik-AG-MPG/first-game.git
```

# Über dieses Repository
Kleines "Spiel", um zu zeigen, wie Inputabfragen in Godot funktionieren.

# Code-Erklärung
- `_process` ist dabei eine Godot-interne Funktion, die Ähnlich wie `update` bei einem Arduino ständig aufgerufen wird (hier jeden Frame). Zudem sagen wir das bei einem Funktionsaufruf eine Variable namens `delta` weitergegeben werden muss. Diesen Funktionsaufruf machen dabei nicht wir sondern die Engine.
`delta` steht hierbei für die Zeit die seit dem letzen Frame vergangen ist. Dies für die Bewegung hier wichtig, sodass sich der Spieler nicht bei einer höheren Bildrate schneller bewegt.
- Zuletzt bedeutet `void` nur das die Funktion kein "return value" hat.
- Mit `if` schauen wir hier, ob eine Bedingung wahr ist. Man kann also auch schreiben `if Input.is_action_pressed("up") == true:`.
- `Input` ist nun eine Klasse. Das ist ähnlich wie Ordner auf einem Computer nur ein wenig Funktionen zu sortieren. Innerhalb dieser Klasse gibt es nun die Methode (so nennt man Funktionen, die in Klassen sortiert sind) `is_action_pressed()`. Diese sendet an Godot nun die Anfrage, ob eine Taste gedrückt wurde.
- Sollte eine Taste nun gedrückt sein wollen wir den Spieler bewegen. Dies machen wir indem wir die Aktuelle Position des Spielers nehmen und einen Vektor (also eine Verschiebung im Raum) hinzuaddieren.
