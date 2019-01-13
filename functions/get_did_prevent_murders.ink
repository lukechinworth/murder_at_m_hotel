== function get_did_prevent_murders()
{
    // TODO: return boolean here
    - not treat_policeman_with_tact:
        ~ return false
    - room_3_occupant != FAMILY_ID && room_4_occupant != FAMILY_ID:
        ~ return false
    - room_3_occupant != DRUNK_GUY_ID && room_4_occupant != DRUNK_GUY_ID:
        ~ return false
    - room_2_occupant != "two_guy_friends" && room_5_occupant != "two_guy_friends":
        ~ return false
    - room_2_occupant != "young_man" && room_5_occupant != "young_man":
        ~ return false
    - room_1_occupant != "griever":
        ~ return false
    - not grieving_mother_describes_son:
        ~ return false
    - not family_leaves:
        ~ return false
    - not young_man_open_up:
        ~ return false
    - else
        ~ return true
}