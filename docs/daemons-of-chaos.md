# Daemons of Chaos

## Legion of Chaos

* **Route I - Undivided**
    * TODO
* **Route II - Succeeding You** // TESTED
    * Destroy factions (For the Motherland!):
        * Brotherhood of the Bear, Druzhina Enclave, Ropsmenn Clan, The Great Orthodoxy, Ungol Kindred and Ursun 
        Revivalists, 
    * Destroy factions (For the Tzarina!):
        * The Ice Court
* **Route III - Peacekeeping Mission**
    * Make alliances (Unify all Chaos Gods under the same alliance):
        * Exiles of Khorne, Poxmakers of Nurgle, Oracles of Tzeentch and Seducers of Slaanesh
    * Reach level 15 with lords:
        * Exalted Bloodthirster, Exalted Great Unclean One, Exalted Keeper of Secrets and Exalted Lord of Change

type MAKE_ALLIANCE;
// total 2;
// culture att_cult_barbarian;
На этом примере видно, что можно указать кол-во фракций определённой культуры.

type MAINTAIN_N_ALLIANCES;
type MAKE_ALLIANCE;
total 2;
faction att_fact_eastern_roman_empire; // BUGGED! Should be able to specify multiple alliances.
faction att_fact_western_roman_empire;
