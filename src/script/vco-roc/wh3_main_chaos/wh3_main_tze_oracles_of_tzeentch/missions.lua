local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_1_the_great_game;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
				{
					type TODO WAIT_FOR_TOOLS;
				}

				payload
				{
					game_victory;
				}
			}
		}
    ]],
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_2_not_so_grand;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
			    {
			        type DESTROY_FACTION;

                    faction wh3_main_cth_burning_wind_nomads;
                    faction wh3_main_cth_celestial_loyalists;
                    faction wh3_main_cth_dissenter_lords_of_jinshen;
                    faction wh3_main_cth_imperial_wardens;
                    faction wh3_main_cth_rebel_lords_of_nan_yang;
                    faction wh3_main_cth_the_jade_custodians;
                    faction wh3_main_cth_the_northern_provinces;
                    faction wh3_main_cth_the_western_provinces;

                    confederation_valid;
			    }

				payload
				{
					game_victory;
				}
			}
		}
    ]],
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_3_iron_man;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
			    {
			        type DESTROY_FACTION;

                    faction wh3_main_nur_bubonic_swarm;
                    faction wh3_main_nur_maggoth_kin;
                    faction wh3_main_nur_poxmakers_of_nurgle;
                    faction wh3_main_nur_septic_claw;

                    confederation_valid;
			    }

				payload
				{
					game_victory;
				}
			}
		}
    ]]
};

return missions;