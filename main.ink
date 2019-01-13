INCLUDE tunnels/place_in_room.ink
INCLUDE functions/get_room_number_by_occupant.ink
INCLUDE functions/get_did_prevent_murders.ink
INCLUDE tunnels/receive_police_code_word.ink
INCLUDE tunnels/do_not_receive_police_code_word.ink
INCLUDE tunnels/answer_phone_while_talking_to_grieving_mother.ink
INCLUDE tunnels/receive_police_phone_number.ink
INCLUDE tunnels/police_interrupts_grieving_mother.ink
INCLUDE tunnels/grieving_mother_describes_son.ink
INCLUDE tunnels/give_police_directory.ink


CONST player_character_name = "Tracy"
CONST desk_girl_name = "Erica"
CONST maintenance_guy_name = "Pete"
CONST policeman_name = "Ricky"
CONST policeman_personally_preferred_name = "Rick"
CONST policeman_personally_preferred_name_confirmation = "RICK"
CONST DRUNK_GUY_ID = "drunk_guy"
CONST drunk_guy_name = "Charlie"
CONST drunk_guy_name_full = "Charlie Chaplin"
CONST drunk_guy_name_nick = "Lester the Lion Charlie"
CONST FAMILY_ID = "family"
CONST family_son_name = "Tyler"

VAR room_1_occupant = ""
VAR room_2_occupant = ""
VAR room_3_occupant = ""
VAR room_4_occupant = ""
VAR room_5_occupant = ""
VAR room_6_occupant = "maintenance"
VAR treat_policeman_with_tact = true


// Chapter 1
Murder at Moonview Motel

* \---
-
9PM
Rain can be heard outside from the lobby of the Moonview Motel. The lobby door chimes as {player_character_name} walks in. Another girl, roughly {player_character_name}'s age, is working the counter.
"Hey, {player_character_name}!"
*   "Heyyyyyyy!"
-   "Are you ready for your shift?"
*   "Yes."
    "That's the spirit."
    **  [Pump fist in the air.] "Mmph."
*   "No."
    "Not with that attitude you aren't!"
    **  [Laugh weakly.] "Heh."
-   "Now listen. There's a couple of important things I have to go over with you. I'm running late for my date, so I'm only going to say it once."
*   "OK..."
*   [Say nothing.] "..."
-   "First things first. Remember {maintenance_guy_name}? The new maintenance guy we hired?"
- (remember_maintenance_guy)
*   "{maintenance_guy_name}!"
*   "Kinda..."
    "5'8, balding, looks a little like my dad?" -> remember_maintenance_guy
-   "Yeah, {maintenance_guy_name}! Well he still doesn't have a place to live. So right now the owner is letting him work for rent. He will be staying in room 6 tonight and indefinitely."
*   (good_deal)"That's a good deal for {maintenance_guy_name}."
    "Yeah, good to be {maintenance_guy_name}. <>
*   "I wish I could do that!"
    "We only have 6 rooms, remember? Also, you don't work nearly as hard as {maintenance_guy_name} does."
    **  "That's fair."
    **  "Not true!"
        "{player_character_name}..."
        *** "Yeah, you're right."
-   {not good_deal: "}Secondly, due to all of the rain, we haven't been able to turn off the sump-pump alarm outside of room 1."
*   "Oh no..."
-   "Yeah. I would try to avoid putting anyone there unless it was necessary. Apparently it's "infuriating"."
*   "I'd bet.["] Outside of room 1 you said?"
-   "Yes. Here, I'll mark it on the floor plan." {desk_girl_name} marks alarm next to room 1 with a red "X". "I know how annoying some of our customers can be. If you get too much lip again, don't hesitate to tell them they are never (Lobby door chimes as a family of three walks in.) WELCOME TO THE MOONVIEW MOTEL! Hi folks! Can I get you a room?"
-   Father: "Hi! Yes, please! We've been driving for most of the day, and we're glad we found this place."
{desk_girl_name}: "Happy to help!" {desk_girl_name} turns to {player_character_name}. "Hey, I really need to go. Can you place these people?"
*   "Yeah, have fun."
    {desk_girl_name}: "Thanks a million. Have a good night!" {desk_girl_name} exits.
*   "No."
    {desk_girl_name}: "...{player_character_name}..."
    **  "Just Kidding."
    {desk_girl_name}: "...Thanks. Have a good night."
    **  [Blow rasberry.] "Pthpppbthppth."
    {desk_girl_name}: "Real mature. Bye." {desk_girl_name} exits.
-
*   "Let's find you guys a good spot!" -> place_in_room(FAMILY_ID) ->
"You will be in room {get_room_number_by_occupant(FAMILY_ID)}".
-   Father: "Great. If it isn't too much trouble, could we get a cot for our son?"
*   "I was just about to ask!["] What's your name, son?"
-   Son: "{family_son_name}"
*   "Well, {family_son_name}, the Moonview Motel has some of the comfiest cots in the state."
-   {family_son_name}: "Thanks..."
*   "It's my pleasure, {family_son_name}.["] When I was your age and went on trips with my parents, I always wanted my own cot. My dad could shake the entire room with his snoring."
-   The mother laughs, {family_son_name} stares, wide-eyed, and the father looks at his shoes, embarrassed.
*   "A nice guy named {maintenance_guy_name} will bring the cot to you soon.["] Here's your key. Go ahead and get settled. Call me at any time. And don't worry, {family_son_name} – you get used to the snoring eventually."
-   \ The mother laughs.
Father: "What?"
*   [Smile.] {player_character_name} smiles.
*   "Goodnight!"
-

// Chapter 2
\---
10PM

The door bell dings as a policeman enters the lobby.
*   "{policeman_name}!"
-   {policeman_name} sighs. "...Just {policeman_personally_preferred_name} is fine, {player_character_name}. Haven't we talked about this?"
*   "Oh, yeah.["] Sorry, {policeman_name}!"
-   {policeman_name} sighs. "...Another night shift? Do you ask for these, or does your boss just not like you?"
*   "I prefer them."
*   "I ask for them[."], but you may be right about my boss."
-   "Why? You like the quiet?"
*   "That's a perk[."], but not the main reason. It's more so the people I run into. I see things come from people you don't see in the afternoon."
-   "Like what?"
*   "Well[..."], last night, an elderly couple came in around midnight. It was obvious that midnight was well beyond their bedtime. Anyways, the husband says under his breath, and I got to witness the meanest, most sadistic 15 minute fight a couple could ever have. At one point, they brought up a pet dog they owned in their 20s."
-   "Geez..."
*   "It got so bad[..."] they demanded two separate rooms. When I told them we only had one, the wife slept in the car. The husband couldn't talk her out of it."
-   "That's pretty bad."
*   "That's relatively normal!["] I've encountered so many strange things. Like, I just asked the new maintenance guy to call and check on me if he can't sleep.
// Editor's note: added this line to make it flow.
-   "That's nice of you."
*   "Thanks![] So how can I help you, {policeman_personally_preferred_name_confirmation}!?" {player_character_name} winks.
// TODO: Check with john about "plot hole" note from script. Does it have to do with hearing "two thiings" earlier?
-   "Well, two things actually."
*   "Not the first time I've heard that tonight."
-   "Huh?"
*   "Nothing."
// Editor' note: for the tact choice, I went with the date option suggested in the original script notes.
-   "...Anyways. I, uh, was wondering if you are free any night next week."
*   "Oh. Uh, you mean like for a date?"
    "Well, yeah. I guess you could say that."
    **  (agree_to_date_with_policeman) "Well...["]Sure!"
        "Okay, great!"
    **  "I'm, uh, kinda taking a break from dating right now.["] Sorry."
        "Oh! Yeah, totally. No problem."
*   "Why would you want to know?"
    "Oh! Sorry. I didn't mean anything weird or anything. Sorry."
    **  "No, I'm sorry[..."]. It's just, I get asked out all the time at my job."
        "Yeah. Totally. Sorry. Forget I ever brought it up."
    **  (treat_policeman_without_tact) "I'm so sick of guys asking me out on the job!"
        "..."
        *** "..."
            "Uh..."
{ treat_policeman_without_tact:
    ~ treat_policeman_with_tact = false
}
-
*   "Uh...["]Was there something else you wanted to tell me?"
-   "Ohhh. Yes. Of course. Now, please don't panic. It probably sounds worse than it is."
*   "...Ok..."
-   {policeman_name} inhales deeply. "Very early this morning, there were a series of break-ins that were no doubt related."
*   "How do you know they were related?"
-   "Well... In each case, the residents were fatally beaten. We have no motive. We have no weapon. All we have are five victims across two homes and one motel room."
*   "Oh my..."
-   "Yeah. Not good."
*   "Why haven't I heard about this?"
    "While they happened somewhere between 3 – 4:30 AM, we didn't catch wind until around 9. One of the victims' boss called us after his no-show."
*   "Why are you telling me this?"
    "I didn't want to scare you, believe me! But I thought you should know because... well...," {policeman_name} looks down at his shoes, "each break-in occurred within a mile of this motel."
-
*   "Yikes..."
-
{
    - treat_policeman_with_tact:
        -> receive_police_code_word ->
    - else:
        -> do_not_receive_police_code_word ->
}

{policeman_name} exits.

*   [Take a deep breath.] "Phewww..."
-
// Chapter 3

\---
10:30PM
The door bell dings as {policeman_name} enters.

*   "Couldn't stay away, huh?"
-   "I wish I could have. Looks like I'll be needing a room for the night."
*   "Don't you have to work?"
-   "The room isn't for me."
*   "Oh..."
-   "As soon as I left here, I got a call from dispatch. A disturbance at the pub down the highway. Pretty routine, I thought."
*   "What happened?"
-   "Well, the issue had calmed down by the time I got there. The individual who caused the ruckus was lying face down on the ground beside the bar. I thought he was unconscious."
*   "Is that so out of the ordinary?"
-   "No, that was normal. But when I turned him over, I was looking into the scared eyes of {drunk_guy_name_full}."
*   "No..."
-   "I'm afraid so."
*   "{drunk_guy_name_nick}?"
-   "Mm-hmm. Our beloved mascot. The same {drunk_guy_name} that did back hand springs while you marched and I kept the bench warm."
*   "Oh dear..."
-   "Pretty sad. {drunk_guy_name} had it rough after high school."
*   "Yeah."
-   "Anyways, it's been about a year since I remember him doing anything like this. Can I put him up for the night? He's still a little drunk but he'll be okay. I don't want him to wake up in a jail cell."
*   "That's nice of you.["] Sure, I'll get him a room."
-   "Thank you. If he pukes on the carpet or does any other damage, send me the bill."
*   "Sure. Thanks." -> place_in_room(DRUNK_GUY_ID) ->
-   "Here's the key to room {get_room_number_by_occupant(DRUNK_GUY_ID)}."
-   "Thank you. I'll be back." {policeman_name} exits.

// Chapter 4
\---
11PM

The door bell dings as two men, both around 30, walk in.

*   "HOWWWWWDY, FOLKS!"
    First: "Well, HOWWWWW-DY!"
    **  "WHAT KIN I DEW FER YEW FIIIIINE GENTLEMENNN?"
    --  First: "...Probably a good stopping point."
    **  "Yeah, sorry.["] How can I help you?"
        First: "That's okay, I'm just tired. Do you have any rooms left?"
*   "Hi, welcome!"
    First: "Hi, thanks!"
    **  "How can I help you?"
        First: "Are there any rooms left? We are beat."
-
*   "We sure do!"
-   First: "Good! One room please."
-   -> place_in_room("two_guy_friends") ->
"Where are you guys headed?"
-   Second: "Haha, Good question. We're not really sure."
*   "Are you running away from home?"
-   First: "No... My friend here is getting married next month, and we've been best friends since college. We don't have much of a plan, but we decided to drive across the country before I lose him forever."
*   "Oh my..."
-   Second: "We'll still be friends, man."
First: "..."
*   "Well, I know you guys are tired.["] Why don't you guys get some sleep, and in the morning give me a ring. If I'm still here, I'll recommend a good place for breakfast. If I'm not, I'll leave a note for the next person."
-   First: "That sounds good. Thanks!"
Second: "Yeah, thanks!"
*   "You bet!"
-   The two men start to leave the counter.
Second: "Our room has two beds, right?"
*   "I thought you were best friends...["]Haha! Yes, two beds.
-   Second: "Cool, thanks."
The two men leave the counter and head down the hall.
*   "Nice guys."
-

// Chapter 5
\---
11:30PM

The door bell chimes as a woman dressed in all black, early forties, enters.

*   "Welcome!"
-   "Hello..."
*   "...Everything ok?"
-   "...Everything is fine."
*   "OK, good!["] How can I help you?"
-   "I'd just like a room."
*   "Certainly!"
-   -> place_in_room("griever") ->
The woman sighs heavily.
*   "Well, here's your key!"
    "Thanks."
    **  "Let me know if there's anything else you need!"
    "Thanks."
    -- The woman leaves the counter and heads to her room.
*   "Are you sure that you're ok?"
    "...Yeah-" The woman starts crying, and then the desk phone rings
    **  [Answer the phone.] "Yes?"
        --- -> answer_phone_while_talking_to_grieving_mother ->
    **  [Ignore the phone.]
        The woman continues to cry.
        *** "I..."
        *** [Say nothing] "..."
        --- The woman continues to cry.
        *** "...Did you lose someone?"
        --- "Yes. I did."
        *** "I'm sorry.["] I lost someone recently as well."
        --- The woman continues to cry.
        *** "No use trying to change what we can't change.	"
            The woman continues to cry "...I'm really tired. Can I have my key?"
            ****    "Sure!"
            ----    The woman leaves the counter and heads to her room.
            ****    "Whoops."
            ----
        *** "What was this person's name?
			The woman continues to cry. "...D-David."
			****    "Tell me about David."
			----    "...W-well, D-david-" The desk phone rings again.
			****    [Answer the phone.] "I'm so sorry. This must be important."
			        -----   -> answer_phone_while_talking_to_grieving_mother ->
			****    [Ignore the phone again.] "That can wait. Please continue."
			        "W-well...David was the best thing that could ever happen to me. He never hurt anyone. It should have been me who died-" The woman continues to cry.
			        *****   "Was David your son?"
			                The woman nods as she cries.
			                ******  "Geez. That's so hard."
			                ------
			        *****   "Was David your husband?"
			                "No...son."
			                ******  "I'm sorry."
			                ------
			        *****   [Say nothing.] "..."
			        -----
			        The woman continues to cry. "...I haven't slept in 3 days."
                    *****   "Well it sounds like you're overdue for some good rest then!"
                    -----   "Haha...Yeah, hopefully." The woman continues to cry.
                    {
                        - treat_policeman_with_tact:
                            -> police_interrupts_grieving_mother ->
                        - else:
                            -> grieving_mother_describes_son ->
                    }
-   {treat_policeman_with_tact: -> give_police_directory ->}
// Chapter 6
\---
1AM
The desk phone rings.
*   [Answer the phone.] "Moonview Motel front desk."
-   "Sorry to bother you. There’s been an accident..."
*   "...I’m sorry, who is this?"
-   "This is a very embarrassed father."
*   "I don’t follow..."
    "Haha. I didn’t mean to confuse you. This is your friends in room {get_room_number_by_occupant(FAMILY_ID)}.
    **  "...Ohh...[]Haha. Accident?
    --  "Yeah...without
*   "Accident?"
    "Yeah, there’s been a leak."
    **  "A leak? Who is this?"
    --  "Haha. Sorry, should’ve prefaced with that. It’s the family in room {get_room_number_by_occupant(FAMILY_ID)}. Without
-   <> going into specifics, we’re going to need a new cot.
*   [Stifle laughter.]{player_character_name} stifles her laughter. "...Oh dear. Of course. How is the little guy?
-   "He’s ok. A little embarrassed. A little wet. Wife is about to give him a bath."
*   "Good...good."
-   "Well, I hate to bug you so late in the evening, but what’s the best way to get that cot? I can come grab it, or if it’s better for you to send it here that works too.
*   "I’ll have it sent ASAP!"
     Are you sure? I don’t want to wake Pete up.
    **  "I insist!"
    --  "Well, ok. Thanks!"
    **  "My pleasure.["] It will be there soon. Hopefully no more accidents for the little guy – good rest instead."
    --  "No kidding...Thanks again!"
    **  "Sure. Goodnight."
    --
    ** [Hang up and dial {maintenance_guy_name}] "Hey...Pete? Did I wake you? ...Good. I need a favor.
    --
*   "On second thought, I don’t think I want to give you the cot."
    "Hehe...Good one!"
    **  [Say nothing] "..."
    --  "So is it better if I come pick it up now?"
    **  "No. I’m serious. You can’t have the cot."
    --  "...I’m going to come to lobby."
    **  "I don’t care."

    --  1:05AM

    "I don’t want to come off rude, but we’re all really exhausted and I don’t think this is funny anymore. Can we please get that cot and we’ll leave you alone?"
    **  "I already told you, the answer is no."
        "...Are you just toying with me?"
        *** "No."
        --- "...What’s your deal? Don’t you have extra cots?"
        *** "We do...but not for you."
        --- "I mistook you as being better than this."
        *** (family_leaves) "I mistook you as being a father who could potty-train his child."
            "EXCUSE ME?"
            ****    "You heard me."
            ----    "You can rip into me all you want, but you do not talk about my son like that!"
            ****    "Seems like I just did."
            ----    "...Well it seems like we’d better leave."
            ****    "Sounds good to me."
            ----    "...Unbelievable. My wife even raved on how good she thought you were at your job...Whatever is eating at you, I hope you sort it out. The father heads back to his room. Shortly after the whole family returns, exits the lobby, packs up their car, and drives away.
            // TODO: ask john why tracy would behave like this. Seems like she knows the family is in danger.
            ****    "That wasn’t easy."
            ----
        *** "Well, I guess you were wrong."
            "I guess so." The father heads back to his room.

    **  "Sure sorry. I’ll have Pete send it soon."
        "It’s ok. Good night."
-
// Chapter 7
\---
2AM
{policeman_name} enters the lobby.
*   {treat_policeman_with_tact} Hi, Rick!
    "Hello...Everything ok? Any trouble from our friend Charlie?"
    **  "No, he’s been fine!["] How’s that background check coming?"
    --  "Hm? ...Oh! Yes! That. It’s going. Ran a check on everyone, not all are complete. So far no cause for concern. A couple of alcohol-related issues on Charlie’s end, which I know you’re probably aware of.
    **  "Yeah..."
    --  "It should be done within an hour or two. I’ll let you know the moment it does."
    **  "Please do.["] Thanks!"
    --  "You bet. Hopefully last night was the last of it."
    **  "Hopefully."
    --  "Still, please remember to NOT go outside if you hear anything strange. And call me."
    **  "Stay put. Call you. Got it."
    --  {policeman_name} smiles. "That’s my girl. I’ll be back soon." {policeman_name} leaves.
*   {not treat_policeman_with_tact} Hi, Rick!
    "Hey {player_character_name}...Everything ok?"
    **  "It is! Thanks for coming back!"
    --  "Of course...Have you heard anything? Strange noises? Anything?"
    **  "I can’t say that I have.["] Maybe a coyote or two?"
    --  "OK. Well, good...I need a favor."
    **  "What’s up?"
    --  "I need your records for the night. I think it would be wise to run checks on everyone here."
    **  "You don’t think[..."]-"
    --  "No, I don’t think the killer is here. But this would be a wise precaution."
    **  "Yes. I agree."
    --
    **  [Hand over directory] "Here you go."
    --  "Thanks. I’ll make these background checks top priority, should be done in a couple hours. We’ll talk soon.
    **  {not family_leaves} "Ok, thanks!"
        {policeman_name} leaves.
    **  {family_leaves} "Ok, thanks!"
        {policeman_name} starts to leave. "...Hey, {player_character_name}?"
        ***  "Yes?"
        --- "Why did you cross off room {get_room_number_by_occupant(FAMILY_ID)}?
        *** "Oh...Well..."
        ---
        *** [Tell the truth.] "I panicked. They were a nice family, and I guess my fear of what could happen got the better of me."
            "Because of the murders?"
            ****    [Nod.] "Mm-hmm"
            ----    "I see...Probably shouldn’t have done that."
            ****    "...why?"
            ----    "I just think you’re overreacting a bit, that’s all."
            ****    "Oh..."
            ----    "We’ll, I’d better run these checks."
            ****    "Ok, see you soon."
            ----    {policeman_name} leaves.
        *** [Lie.] "They called around midnight. Said there was a family emergency. Packed up their car and were gone within minutes."
            "Well, that’s too bad."
            ****    "Hm?"
            ----    "About the family emergency, I mean."
            ****    "Oh. Right."
            ----    "Well, I’d better run these checks. We’ll be in touch."
            ****    "Sounds good. Thanks."
            ----    {policeman_name} leaves.
-
// Chapter 8
\---
3AM
Lobby doors ding as a young man walks in.
*   "Hello and welcome to the Moonview Motel!"
-   The young man mutters something under his breath.
*   (ignore_muttering) [Ignore muttering.] -> young_man_how_can_help_you
*   "I'm sorry?"
-   "Nothing"
*   (young_man_how_can_help_you) "How can I help you?"
-   "A room. The sooner the better."
-> place_in_room("young_man") ->
"Of course! You look a little tired."
The young man mutters something under his breath again.
*   "Come again?"
-   "-"
*   "Did you say something?"
-   "I said, THAT’S NONE OF YOUR BUSINESS"
*   [Be harsh.] "What’s your name?"
    "Huh?"
    **  "WHAT’S YOUR NAME?"
    --  "T-Thomas..."
    **  "Well, T-Thomas...["] This information might be shocking and brand new to you, but you aren’t the only one having a bad night. I’ve been dealing with the police, a possible killer on the loose, a drunk classmate who should PROBABLY be in jail right now, and a maintenance guy who is treating me like his helpless, 8 year old daughter all because I asked him to 'check on me once or twice'. On top of that, I’ll have worked for 14 hours today. I had to take a second job washing dishes just to pay rent, and it’s another 14 hour day tomorrow. I get that a few of us aren't where we want to be. But DON’T throw that anger on someone else. It’s hard enough already for them. Here is your key, Thomas. Get some sleep.
    --  "..." Thomes leaves.
*   (young_man_open_up) [Be real.] "Why are you talking to me like this?"
    "Like what?"
    **  "I think you know exactly what I’m talking about.["] I want to make your visit as cozy as possible, and I have tried to do nothing but that since the moment you walked in.
    --  "..."
    **  "What’s your name?"
    --  "...Thomas."
    **  "Hello, Thomas.["] I’m {player_character_name}."
    --  "Hi..."
    **  "What’s on your mind, Thomas?"
    --  "Well..." Thomas tells a sad story. Thomas had one real friend in the entire city – his roommate. His friend was soft and ate a lot of Thomas’s anger. Unfortunately, Thomas never got the help he needed and Thomas’s anger became too much for his friend. His friend kicked Thomas out and hasn’t talked to him since.
    **  "I’m sorry, Thomas."
    --  "..."
    **  "I think your friend still cares about you[."], but it sounds like he needs some time to sort things out. Without you. ...Do you think it would be wise to get some help in the meantime?
    --  "...Yeah. Maybe so."
    **  "Is there anyone you can stay with in the meantime?["] Hotel life can be expensive."
    --  "Maybe. A lot of people wouldn’t put up with me like my friend did. ...I may need to change a few things. ...Thanks."
    **  [Smile.] "My pleasure."
    --  "..."
    **  "Well, you’re welcome at the Moonview Motel anytime.["] And since this night's halfway over, I’ll only charge you half-price for the night. Sound fair?
    --  "Yeah." Thomas smiles. "That sounds fair."
    **  "Have a good night[."], Thomas. Get some rest. Don’t hesitate to call if you need anything.
    --  Thomas leaves.
-
// Chapter 9
\---
4AM
{policeman_name} enters the lobby.

*   "Hi, {policeman_personally_preferred_name}!"
-   "Hello."
*   "...Is everything ok?"
-   {policeman_name} sighs. "I hope so, but it might not be."
*   "What’s wrong?["] Are we in danger?"
-   "No, no... I think we’ll be ok. But I think I may have made a pretty big mistake."
*   "Oh?"
-   "Well, I ran those background checks like I said I would. And they turned out mostly ok."
*   "Mostly?"
-   "As it turns out, three years ago a case went unsolved. A woman was inside her house one night when a stranger broke in. She claimed he attacked her and even tried to strangle her. Luckily for her, a neighbor was walking by at just the right time and heard her screaming. Before the murder could happen, the neighbor kicked down the door. By the time he reached the kitchen, the intruder had bolted out the back door and was well into the woods."
*   "Who was the intruder?"
-   "We don’t know for sure, but the woman’s description was a near perfect match of..."
*   "...Of?"
-   "Charlie."
*   "No["]..."
-   "I'm afraid so."
*   "Why wasn’t he arrested?"
-   "We brought him in for questioning, but he denied all charges. His friend gave a solid alibi, and we just didn’t have any proof. And I believed him, too. Just like that. On top of all of this, the victim was a drug addict with a much worse record than him. It was her word against his, and she had previously lied in court on two separate occasions."
*   "So[..."], you think Charlie killed these people last night?"
-   "I don’t know. But I’m damn certain he won’t be staying here another minute. Sorry to put you through all this."

~ temp did_prevent_murders = get_did_prevent_murders()

*   {not did_prevent_murders} "That’s ok. You didn’t know."
    "...Well. I’m gonna do what I should have done several hours ago. I’m taking {drunk_guy_name} to jail." {policeman_name} leaves.
    // TODO: go to news story section. Each way you play the game ends with a news story of the murder. The news stories will be designed to give clues on how to prevent the murder and the identity of the murderer next time you play.
    -> END
*   {did_prevent_murders} "It won’t be worse than my Thanksgiving!"
-   "Ha-" {policeman_name} pauses, then pulls out a note pad and writes, "What’s wrong?"
*   Write, "Let’s talk somewhere private."
- {policeman_name} writes, "Follow me to my car."
// Chapter 10
\---
4:15AM

-   "What’s wrong?"
*   "Are you sure it’s Charlie?["] I know he’s had a rough decade since we graduated, but do you really think he could do this?"
-   "...As his friend, no I don’t. But based off of the facts, yes I do. But none of that is important right now – I need to get him out of here."
*   "I understand.["] Can you do me one favor before you go?"
-   "What’s that?"
*   "I want to make sure everyone is ok.["] Can you gently knock on everyone’s door?"
-   "...I don’t want to do that."
*   "Why?"
-   "You want me to go back and knock on everyone’s door at 4 in the morning? I don’t think they’ll like that."
*   "What do you mean by "go back"?"
-   "Uh...I already checked on them earlier."
*   "When?"
-   "Are we playing 20 questions?!"
*   [Say nothing.] "..."
*   "Just wondering.["] I’m somewhat responsible for this too, you know."
-   "I need you to let me do my job."
*   "Well could you still check?"
    "You’re killing me." {policeman_name} sighs. "FINE. One quick check. Please go wait inside, and don’t come out."
    **  "Ok. Thank you."
// TODO: ask john if we should leave chance to lose game here.
*   "I’m sorry. You’re right."
    {policeman_name} sighs. "Thanks. Now, I need to take {drunk_guy_name} in. Can I do that?"
    **  "Sure."
    --  "Thank you. Please go back inside."
    // TODO: go to news story.
    -> END
-
// Chapter 11
4:30AM
{policeman_name} enters the lobby.
*   "Well??"
-   "Nothing to worry about, at least I THINK. No one answered their doors."
*   "Really?["] No one?"
-   "Really. No one."
*   "That’s strange.["] Did you knock very loudly?"
-   {policeman_name} sighs. "Yes, {player_character_name}. I knocked at a level they could hear if they weren’t fast asleep. Only person who responded was the little boy in room {get_room_number_by_occupant(FAMILY_ID)}. He didn’t answer the door, just met me at the window. He looked scared, so I winked at him and motioned for him to go back to sleep."
*   "Oh, you saw the boy?"
-   "...Did I not just say that? Yes! Now is that all?"
*   "I just think it’s kind of strange that you saw the boy.["] He and his parents left a few hours ago."
-   "No they didn’t, they’re-"
*   "They’re what?"
-   "..."
*   "On the directory I gave you?"
-   "..."
*   "Did you really knock on everyone’s door?"
-   "...No."
*   "Why?"
-   "Because I was scared."
*   "Scared of what?"
-   "Scared of being recognized."
*   "By who?"
// TODO: does the player know who Jared is.
-   "...By Thomas. And Jared."
*   "When did they see you?"
// TODO: clarify woman in black.
-   "When I tried to break in to the woman’s room. And when I tried to break in to Pete's room."
*   "..."
-   "..."
*   "Oh, Rick..."
-   "Surprise."
*   "And you were going to pin the whole thing on Charlie?"
-   "Charlie may have killed that drug addict for all I know, and he could’ve murdered those people last night."
// TODO: what does this mean?
*   "That wasn’t you?"
-   "No." {policeman_name} pauses. "But I’ve thought about it for a while. And I thought tonight was my chance."
*   "...Well what now?"
-   "Well...I suppose I could just kill you now. Throw you in that pool, plant some evidence that it was Charlie, and leave him in his room. With what happened three years ago, he won’t get out of this one."
*   "Yeah, you could.["] But you won’t."
-   "Why’s that?"
*   "Because I know you too well."
    "...Hm?"
*   "Because you’re a coward."
    "..."
    ** "..."
	-- "Oh yeah?" {policeman_name} makes a move toward {player_character_name}.
	-> END
-
*   "I’ve known you for over twenty years now.["] I know you had a rough upbringing – and maybe I underestimated just how rough it was – but you’ve always taken the heat for other people, not the other way around like you’re doing with Charlie right now." {player_character_name} pauses.
-
*   "Remember in 4th grade[..."] when I broke the teacher’s window and was terrified of my parents finding out? You took all of the punishment for me, knowing there would be much worse waiting for you at your home. And I didn’t even ask you to. In fact, I think I asked you not to."
-   "..."
// TODO: not clear to me how Tracy knows that these guys prevented the murders.
*   "Thanks to Thomas and those two nice guys, you still haven’t killed anyone.["] Your life isn’t over, Rick. You just need help."
-   "Yeah..."
*   "I have a plan.["] First of all, take {drunk_guy_name} in. The thought of him being here is a little scary. But afterwards, please turn yourself in. Your coworkers, your friends – they will find you help. I will find you help." {player_character_name} pauses.
-
*   "Asking for it is not a sign of weakness.["] If I had taken that advice a few years ago, I wouldn’t be working two jobs I hate just to survive. And I definitely wouldn’t be so lonely."
-   "..."
*   "Turn yourself in[."] and I won’t tell a soul that this conversation occurred." {player_character_name} pauses.
-
*   "Sound like a plan?"
-   "...Yeah. Sounds like a plan." {policeman_name} leaves.
{desk_girl_name} enters.
-   "Was that a cop?"
*   "Oh. Yeah."
-   "...Is everything ok?"
*   "Yeah.["] Pretty dull night, to be honest." {player_character_name} pauses.
-
*   "Pete is in room 6.["] Have a good shift!" {player_character_name} leaves.
// TODO: go to news story.
THE END YOU WIN

written by John Reimer
programmed by Luke Chinworth
-> END
