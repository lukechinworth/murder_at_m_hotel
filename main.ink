INCLUDE tunnels/place_in_room.ink
INCLUDE functions/get_room.ink


VAR 1_name = "Tracy"
VAR 2_name = "Erica"
VAR m_name = "Pete"
VAR p_name = "Ricky"
VAR p_name_suggested = "Rick"
VAR p_name_suggested_capitalized = "RICK"

VAR room_1 = ""
VAR room_2 = ""
VAR room_3 = ""
VAR room_4 = ""
VAR room_5 = ""
VAR room_6 = "maintenance"

// TODO: Figure out what voice to use for narration (text in parens)

// Chapter 1
INT. MOONVIEW MOTEL
9PM

(Raining)
(Bell Rings) ({1_name} walks in)
(Girl roughly 1's age, different hair color is working the counter)

"Hey {1_name}!"
*   "Heyyyyyyy!"
-

"Are you ready for your shift?"
*   "Yes"
    "That's the spirit."
    **  [Pump fist in the air]
    --
*   "No"
    "Not with that attitude you aren't!"
    **  [Laugh weakly] "Heh.."
    --
-

"Now listen. There's a couple of important things I have to go over with you. I'm running late for my date, so I'm only going to say it once."
*   "OK..."
*   [Say nothing]
-

"First things first. Remember {m_name}? The new maintenance guy we hired?"
- (remember_maintenance_guy)
*   "{m_name}!"
    "Yeah, {m_name}! <>
*   "Kinda..."
    "5'8, balding, looks a little like my dad?"
    -> remember_maintenance_guy
-

Well he still doesn't have a place to live. So right now the owner is letting him work for rent. He will be staying in room 6 tonight and indefinitely."
*   "That's a good deal for {m_name}."
    "Yeah, good to be {m_name}."
*   "I wish I could do that!"
    "We only have 6 rooms, remember? Also, you don't work nearly as hard as {m_name} does."
    **  "That's fair."
    **  "Not true!"
        "{1_name}..."
        *** "Yeah, you're right."
-

"Secondly, due to all of the rain, we haven't been able to turn off the sump-pump alarm outside of room 1."
*   "Oh no..."
-

"Yeah. I would try to avoid putting anyone there unless it was necessary. Apparently it's "infuriating"."
*   "I'll bet. Outside of room 1 you said?"
-

"Yes. Here, I'll mark it on the floor plan."

(show floor plan. Show {m_name}'s room and mark alarm with a red X)

"I know how annoying some of our customers can be. If you get too much lip again, don't hesitate to tell them they are never (bell rings) WELCOME TO THE MOONVIEW MOTEL!"

(Family of 3 walks in)

"Hi folks! Can I get you a room?"

"Hi! Yes, please! We've been driving for most of the day, and we're glad we found this place."

"Happy to help!"

"Hey, I really need to go. Can you place these nice people?"
*   "Yeah, have fun."
    "Thanks a million. Have a good night!"
*   "No."
    "...{1_name}..."
    **  "Just Kidding."
    "...thanks. Have a good night.
    **  [Blow rasberry] "pthppppthppth"
    "Real mature. Bye."
-

({2_name} leaves)

*   "Let's find you a good spot!"
-

-> place_in_room("family") ->

"I've put you in Room {get_room("family")}".
-

"Great. If it isn't too much trouble, could we get a cot for our son?"

*   "I was just about to ask!["] What's your name, son?"
-

"Tyler"

*   "Well, Tyler, the Moonview Motel has some of the comfiest cots in the state."
-

"Thanks..."

*   "It's my pleasure, Tyler.["] When I was your age and went on trips with my parents, I always wanted my own cot. My dad could shake the entire room with his snoring.
-

(Mother laughs. Tyler stares at you, wide-eyed. The father looks at his shoes, embarrassed)

*   "A nice guy named {m_name} will bring it soon.["] Here's your key – go ahead and get settled. Call me at any time."
-

*   "And don't worry, Tyler[..."] – you get used to the snoring eventually.
-

(wife laughs again)

"What?"

*   "Nothing."
*   "Goodnight!"
-

// Chapter 2
10PM

(bell rings) ({p_name} the policeman walks in)
*   "{p_name}!"
-

"hmmf... Just {p_name_suggested} is fine, {1_name}. Haven't we talked about this?"

*   "Oh, yeah.["] Sorry, {p_name}!"
-

"hmmf... Another night shift? Do you ask for these, or does your boss just not like you?"


*   "I prefer them."
*   "I ask for them[."], but you may be right about my boss."
-

"Why? You like the quiet?"

*   "That's a perk[."], but not the main reason. It's more so the people I run into. I see things come from people you don't see in the afternoon."
-

"Example?"

*   "Well[..."], last night, an elderly couple came in around midnight. It was obvious that midnight was well beyond their bedtime. Anyways, the husband says under his breath, and I got to witness the meanest, most sadistic 15 minute fight a couple could ever have. At one point, they brought up a pet dog they owned in their 20s."
-

"Jeez..."

*   "It got so bad, they demanded two separate rooms.["] When I told them we only had one, the wife slept in the car. The husband couldn't talk her out of it."
-

"That's pretty bad."

*   "That's relatively normal!["] I've encountered so many strange things. I just asked the new maintenance guy to call and check on me if he can't sleep. 

(writer's note: plot hole – must omit later part)

"Good."

*   "Yep![] So how can I help you, {p_name_suggested_capitalized}!?
-


"Well, two things actually."

*   "Not the first time I've heard that tonight."
-

"Huh?"

*   "Nothing."
-


"...Anyways."

// TODO: come up with scenario for player to use tact with police officer
(editor's note: come up with scenario for player to use tact with police officer)
*   Treat {p_name} without tact
    "I'm going to have to ask to leave, sir," I blurted.
*   (treated_police_with_tact) Treat {p_name} with tact
-

-> END
