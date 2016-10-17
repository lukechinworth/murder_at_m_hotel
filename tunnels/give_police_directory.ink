== give_police_directory
{not police_interrupts_grieving_mother || grieving_mother_describes_son: ({p_name} enters)}
{grieving_mother_describes_son: "Thanks for waiting, {p_name_suggested}. What's up?"|What's up, {p_name_suggested}?"}
-   "How many rooms are occupied right now?"
*   Let's see...["]I've given out 5. Would you like the last one? Is that what this is about?"
-   "Not exactly. I need the directory. It would be stupid to not run some background checks on these people."
*   "Oh...Yeah, that is smart![" Hand over directory] Here you go."
-   "Thank you. I'll get these folks processed as soon as possible. Remember our code word?"
*   "Yep!"
-   "Great! See you in a couple of hours, hopefully." (exits)
->->