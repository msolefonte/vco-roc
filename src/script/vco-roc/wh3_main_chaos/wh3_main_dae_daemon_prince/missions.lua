local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_1_todo;
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
			victory_type vco_victory_type_alternative_2_succeeding_you;
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
    ]],
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_3_undivided;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
			    {
			        type NOT_DONE_YET;
			    }

			    objective
			    {
			        type NOT_DONE_YET;
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