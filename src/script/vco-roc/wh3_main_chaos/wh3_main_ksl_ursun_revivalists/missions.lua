local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_1_ursun_chaos_dwarfs;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 6;

					province wh3_main_chaos_province_the_blasted_wastes;
					province wh3_main_chaos_province_the_haunted_forest;
					province wh3_main_chaos_province_the_howling_wastes;
					province wh3_main_chaos_province_the_plain_of_zharr;
					province wh3_main_chaos_province_the_wolf_lands;
					province wh3_main_chaos_province_zorn_uzkul;
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
			victory_type vco_victory_type_alternative_2_bear_hug;
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
			victory_type vco_victory_type_alternative_3_todo;
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
    ]]
};

return missions;