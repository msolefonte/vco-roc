local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_1_too_rich_to_walk;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
			    {
			        type TODO NOT_DEFINED;
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
			victory_type vco_victory_type_alternative_2_sweet_and_sour_dragon;
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
			victory_type vco_victory_type_alternative_3_overtyrants_reign;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
			    {
			        type TODO NOT_DONE_YET;
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