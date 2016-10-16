== receive_police_code_word
VAR code_word = "Thanksgiving"

"I know, I feel the same way. But I have some ideas to keep you safe if you're interested."
*   "Yes, please!"
-   "Great! Well, first let's establish a code word. Any time you have something you want to tell me but are afraid someone is listening, mention "{code_word}". It's only weeks away – won't seem too out of the ordinary.
*   "Got it---"

-   (code_word_test)
-   (count)
{count > 1: "{code_word}"}
*   "{code_word}"
    "Yep! <>
*   "Christmas" -> code_word_test
*   "Black Friday" -> code_word_test
*   "Yom Kippur" -> code_word_test

-   Secondly, if you hear anything out of the ordinary – do NOT inspect it. -> receive_police_phone_number ->

"I'll try to come check on you every two hours. Remember our code word?"
*   (correct) "{code_word}!"
*   "Take your daughter to work day!"
-   {correct: "Yep! |(sighs) "...}Well, I'm needed elsewhere. See you around midnight, hopefully."
*   Sounds like a plan![] Hey, {p_name_suggested}?
-   "Yes?"
*   "Thanks."
-   (smiles) "It's my pleasure."
->->


