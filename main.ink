INCLUDE place_in_room.ink

VAR room1 = ""
VAR room2 = ""
VAR room3 = ""
VAR room4 = ""
VAR room5 = ""
VAR room6 = "maintenance"


9pm M__  Motel

\- Some banter with Previous clerk -
\- Family comes in for the night -

Place Family
-> place_in_room("family", -> family_placed)
== family_placed

// continue here
The {room1} was placed 

-> END