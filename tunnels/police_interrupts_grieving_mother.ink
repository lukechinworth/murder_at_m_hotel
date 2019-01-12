== police_interrupts_grieving_mother
({policeman_name} enters)
{policeman_name}: "Hey, {player_character_name}. I...Oh dear. I'm sorry."
*   "It's ok."
-   {policeman_name}: "Is there any way I could talk to you for a moment?
G: "I should probably be going..."
*   "Are you sure?"
    G: "Yes. You guys probably have something important to talk about, and I need to try to get some sleep."
    **  [Hand over key] "Of course. Here's your key. Call if you need anything! Even just to talk."
    --  G: "Yes. Ok." (smile) "Thank you."
    {policeman_name}: "Ma'am."
    (G exits)
*   "No, please don't.["] I want to hear more about David. {policeman_personally_preferred_name}, can you please come back in a few minutes?
    {policeman_name}: "I could...It's kind of important though."
    **  "Oh...sorry, ma'am. Do you mind giving us a moment?"
        G: "Of course. I really should try to get some rest. Can I get that key?"
        *** [Smile and hand over key] "Of course. Please call if you need anything. Even just to talk."
        --- G: "Thank you."
        {policeman_name}: "Ma'am."
        (G exits)
    **  "What we are talking about is important as well.["] Sorry Rick, please come back in a few minutes."
        {policeman_name}: "...All right, then." (exits)
        -> grieving_mother_describes_son ->
-   ->->