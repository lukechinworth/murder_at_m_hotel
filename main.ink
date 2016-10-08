INCLUDE place_in_room_tunnel.ink

VAR room1 = ""
VAR room2 = ""
VAR room3 = ""
VAR room4 = ""
VAR room5 = ""
VAR room6 = "maintenance"


INT. M__  MOTEL -- 9PM

The previous shift's desk clerk informed me that the maintenance guy is in room 6.

A family came in and needed a room. I placed them in
-> place_in_room_tunnel("family") ->

A Police officer walked in and approached the desk.

"There have been several murders in the area," he said.

He then proceeded to hit on me...

*   [Excuse me...!?]
    "I'm going to have to ask to leave, sir," I blurted.
*   (treated_police_with_tact) "Thank you, but[...] I'm not interested, sir."
-

{treated_police_with_tact}
-> END