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
			        type TODO FIXME;
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
			victory_type vco_victory_type_alternative_2_inevitable;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
                {
                    type DESTROY_FACTION;

                    faction wh3_main_tze_all_seeing_eye;
                    faction wh3_main_tze_broken_wheel;
                    faction wh3_main_tze_flaming_scribes;
                    faction wh3_main_tze_oracles_of_tzeentch;
                    faction wh3_main_tze_sarthoraels_watchers;

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
			victory_type vco_victory_type_alternative_3_black_death;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
			    {
			        type TODO NOT_DONE_YET;
			    }

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