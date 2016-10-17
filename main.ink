INCLUDE tunnels/place_in_room.ink
INCLUDE functions/get_room.ink
INCLUDE tunnels/receive_police_code_word.ink
INCLUDE tunnels/do_not_receive_police_code_word.ink
INCLUDE tunnels/answer_phone_while_talking_to_grieving_mother.ink
INCLUDE tunnels/receive_police_phone_number.ink
INCLUDE tunnels/police_interrupts_grieving_mother.ink
INCLUDE tunnels/grieving_mother_describes_son.ink
INCLUDE tunnels/give_police_directory.ink


CONST 1_name = "Tracy"
CONST 2_name = "Erica"
CONST m_name = "Pete"
CONST p_name = "Ricky"
CONST p_name_suggested = "Rick"
CONST p_name_suggested_all_caps = "RICK"
CONST d_name = "Charlie"
CONST d_name_full = "Charlie Chaplin"
CONST d_name_nick = "Lester the Lion Charlie"

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
(Girl roughly {1_name}'s age, different hair color is working the counter)

"Hey {1_name}!"
*   "Heyyyyyyy!"
-   "Are you ready for your shift?"
*   "Yes"
    "That's the spirit."
    **  [Pump fist in the air]
*   "No"
    "Not with that attitude you aren't!"
    **  [Laugh weakly] "Heh.."
-   "Now listen. There's a couple of important things I have to go over with you. I'm running late for my date, so I'm only going to say it once."
*   "OK..."
*   [Say nothing]
-   "First things first. Remember {m_name}? The new maintenance guy we hired?"
- (remember_maintenance_guy)
*   "{m_name}!"
    "Yeah, {m_name}! <>
*   "Kinda..."
    "5'8, balding, looks a little like my dad?"
    -> remember_maintenance_guy
-   "Well he still doesn't have a place to live. So right now the owner is letting him work for rent. He will be staying in room 6 tonight and indefinitely."
*   "That's a good deal for {m_name}."
    "Yeah, good to be {m_name}."
*   "I wish I could do that!"
    "We only have 6 rooms, remember? Also, you don't work nearly as hard as {m_name} does."
    **  "That's fair."
    **  "Not true!"
        "{1_name}..."
        *** "Yeah, you're right."
-   "Secondly, due to all of the rain, we haven't been able to turn off the sump-pump alarm outside of room 1."
*   "Oh no..."
-   "Yeah. I would try to avoid putting anyone there unless it was necessary. Apparently it's "infuriating"."
*   "I'll bet. Outside of room 1 you said?"
-   "Yes. Here, I'll mark it on the floor plan."

(show floor plan. Show {m_name}'s room and mark alarm with a red X)

"I know how annoying some of our customers can be. If you get too much lip again, don't hesitate to tell them they are never (bell rings) WELCOME TO THE MOONVIEW MOTEL!"

(Family of 3 walks in)

{2_name}: "Hi folks! Can I get you a room?"
Father: "Hi! Yes, please! We've been driving for most of the day, and we're glad we found this place."
{2_name}: "Happy to help!"
{2_name}: "Hey, I really need to go. Can you place these nice people?"
*   "Yeah, have fun."
    "Thanks a million. Have a good night!"
*   "No."
    "...{1_name}..."
    **  "Just Kidding."
    "...thanks. Have a good night.
    **  [Blow rasberry]
    "Real mature. Bye." ({2_name} exits)
-
*   "Let's find you a good spot!"
-   -> place_in_room("family") ->
"I've put you in Room {get_room("family")}".
-   Father: "Great. If it isn't too much trouble, could we get a cot for our son?"
*   "I was just about to ask!["] What's your name, son?"
-   Son: "Tyler"
*   "Well, Tyler, the Moonview Motel has some of the comfiest cots in the state."
-   Tyler: "Thanks..."
*   "It's my pleasure, Tyler.["] When I was your age and went on trips with my parents, I always wanted my own cot. My dad could shake the entire room with his snoring.
-   Mother: (laughs). 
Tyler: (stares, wide-eyed)
Father: (looks at shoes, embarrassed)
*   "A nice guy named {m_name} will bring it soon.["] Here's your key – go ahead and get settled. Call me at any time."
-
*   "And don't worry, Tyler[..."] – you get used to the snoring eventually.
-   Mother: (laughs)
Father: "What?"
*   "Nothing."
*   "Goodnight!"
-

// Chapter 2
10PM

(bell rings) (policeman enters)
*   "{p_name}!"
-   \ (sigh) "...Just {p_name_suggested} is fine, {1_name}. Haven't we talked about this?"
*   "Oh, yeah.["] Sorry, {p_name}!"
-   \ (sigh) "...Another night shift? Do you ask for these, or does your boss just not like you?"
*   "I prefer them."
*   "I ask for them[."], but you may be right about my boss."
-   "Why? You like the quiet?"
*   "That's a perk[."], but not the main reason. It's more so the people I run into. I see things come from people you don't see in the afternoon."
-   "Example?"
*   "Well[..."], last night, an elderly couple came in around midnight. It was obvious that midnight was well beyond their bedtime. Anyways, the husband says under his breath, and I got to witness the meanest, most sadistic 15 minute fight a couple could ever have. At one point, they brought up a pet dog they owned in their 20s."
-   "Geez..."
*   "It got so bad, they demanded two separate rooms.["] When I told them we only had one, the wife slept in the car. The husband couldn't talk her out of it."
-   "That's pretty bad."
*   "That's relatively normal!["] I've encountered so many strange things. I just asked the new maintenance guy to call and check on me if he can't sleep.
-   "Good."

(writer's note: plot hole – must omit later part)

*   "Yep![] So how can I help you, {p_name_suggested_all_caps}!?
-   "Well, two things actually."
*   "Not the first time I've heard that tonight."
-   "Huh?"
*   "Nothing."
-   "...Anyways."

// TODO: come up with scenario for player to use tact with police officer
(editor's note: come up with scenario for player to use tact with police officer)

*   [Treat {p_name} without tact] You treated him without tact.
*   (treated_police_with_tact) [Treat {p_name} with tact] You treated him with tact.
-

*   "Was there something else you wanted to tell me?"
-   "Ohhh. Yes. Of course. Now, please don't panic. It probably sounds worse than it is."
*   "...Ok..."
-   \ (deep inhale) "Very early this morning, there were a series of break-ins that were no doubt related."
*   "How do you know they were related?"
-   "Well... In each case, the residents were fatally beaten. We have no motive. We have no weapon. All we have are five victims across two homes and one motel room.
*   "Oh my..."
-   "Yeah. Not good."
*   "Why haven't I heard about this?"
    "While they happened somewhere between 3 – 4:30 AM, we didn't catch wind until around 9. One of the victims' boss called us after his no-show."
*   "Why are you telling me this?"
    "I didn't want to scare you, believe me! But I thought you should know because... well... (looks down at his shoes) each break-in occurred within a mile of this motel."
-

*   "Yikes..."
-   {
    - treated_police_with_tact:
        -> receive_police_code_word ->
    - else:
        -> do_not_receive_police_code_word ->
}

({p_name} exits)

*   [Take a deep breath]
-
// Chapter 3

10:30PM

(bell rings. {p_name} walks in)

*   "Couldn't stay away, huh?"
-   "I wish I could have. Looks like I'll be needing a room for the night."
*   "Don't you have to work?"
-   "The room isn't for me."
*   "Oh..."
-   "As soon as I left here, I got a call from dispatch. A disturbance at the pub down the highway. Pretty routine, I thought."
*   "What happened?"
-   "Well, the issue had calmed down by the time I got there. The individual who caused the ruckus was lying face down on the ground beside the bar, possibly passed out."
*   "Is that so out of the ordinary?"
-   "No, that was normal. But when I turned him over, I was looking into the scared eyes of {d_name_full}."
*   "No..."
-   "I'm afraid so."
*   "{d_name_nick}?"
-   "Mm-hmm. Our beloved mascot. The same {d_name} that did back hand springs while you marched and I kept the bench warm."
*   "Oh dear..."
-   "Pretty sad. {d_name} had it rough after high school."
*   "Yeah."
-   "Anyways, it's been about a year since I remember him doing anything like this. Can I put him up for the night? He's still a little drunk but he'll be okay. I don't want him to wake up in a jail cell."
*   "That's nice of you.["] Sure, I'll get him a room."
-   "Thank you. If he pukes on the carpet or does any other damage, send me the bill."
*   "Sure. Thanks."
-   -> place_in_room("drunk") ->
"Here's the key to room {get_room("drunk")}."
"Thank you. I'll be back."

({p_name} exits)

// Chapter 4
11PM

(bell chimes. Two men walk in, both around 30?)

*   "HOWWWWWDY, FOLKS!"
    "Well, HOWWWWW-DY!"
    **  "WHAT KIN I DEW FER YEW FIIIIINE GENTLEMENNN?"
    --  "...Probably a good stopping point."
    **  "Yeah, sorry.["] How can I help you?"
        "That's okay, I'm just tired. Do you have any rooms left?"
*   "Hi, welcome!"
    "Hi, thanks!"
    **  "How can I help you?"
        "Are there any rooms left? We are beat."
-
*   "We sure do!"
-   J: "Good! One room please."
-   -> place_in_room("guys") ->
"Where are you guys headed?"
-   D: "Haha, Good question. We're not really sure."
*   "Are you running away from home?"
-   J: "No... My friend here is getting married next month, and we've been best friends since college. We don't have much of a plan, but we decided to drive across the country before I lose him forever."
*   "Oh my..."
-   D: "We'll still be friends, man."
J: "......"
*   "Well, I know you guys are tired.["] Why don't you guys get some sleep, and in the morning give me a ring. If I'm still here, I'll recommend a good place for breakfast. If I'm not, I'll leave a note for the next person."
-   J: "That sounds good. Thanks!"
D: "Yeah, thanks!"
*   "You bet!"
-   \ (D + J start to leave)
D: "Our room has two beds, right?"
*   "I thought you were best friends...["](laughs) Yes, separate beds.
-   D: "Cool, thanks."

(D + J exit)

*   "Nice guys."
-

// Chapter 5
11:30PM

(bell chimes. Woman dressed in all black enters. Early 40s?)

*   "Welcome!"
-   "Hello..."
*   "...Everything ok?"
-   "...Everything is fine."
*   "OK, good![."] How can I help you?"
-   "I'd just like a room."
*   "Certainly!" 
-   -> place_in_room("mother") -> 
(heavy sigh)
*   [Ignore sigh and hand over key] "Well, here's your key!"
    "Thanks."
    **  "Let me know if there's anything else you need!"
    "Thanks."
    -- \ (G leaves)
*   "Are you sure that you're ok?"
    "...Yeah---" (crying)
    (Desk Phone Rings)
    **  [Answer the phone] "Yes?"
        --- -> answer_phone_while_talking_to_grieving_mother ->
    **  [Ignore the phone]
        (crying)
        *** "I..."
        *** [Say nothing]
        --- \ (crying)
        *** "...Did you lose someone?"
        --- "Yes. I did."
        *** "I'm sorry.["] I lost someone recently as well."
        --- \ (crying)
        *** "No use trying to change what we can't change.	"
            (crying) "...I'm really tired. Can I have my key?"
            ****    "Sure!" [Hand over key]
            ----    \ (G leaves)
            ****    "Whoops."
            ----
        *** "What was this person's name?
			(crying) "...D-David."
			****    "Tell me about David"
			----    "...W-well, D-david---" (Phone rings)
			****    [Answer the phone] "I'm so sorry. This must be important."
			        -----   -> answer_phone_while_talking_to_grieving_mother ->
			****    [Ignore the phone again] "That can wait. Please continue."
			        "W-well...David was the best thing that could ever happen to me. He never hurt anyone. It should have been me who died---" (crying)
			        *****   "Was David your son?"
			                (crying) (nods)
			                ******  "Geez. That's so hard."
			                ------
			        *****   "Was David your husband?"
			                "No...son."
			                ******  "I'm sorry."
			                ------
			        *****   [Say nothing] "..."
			        -----
			        (crying) "...I haven't slept in 3 days."
                    *****   "Well it sounds like you're overdue for some good rest then!"
                    -----   "Haha...Yeah, hopefully" (crying)
                    {
                        - treated_police_with_tact: 
                            -> police_interrupts_grieving_mother ->
                        - else:
                            -> grieving_mother_describes_son ->
                    }
-   {treated_police_with_tact: -> give_police_directory ->}
// Chapter 6
to be continued...
-> END
