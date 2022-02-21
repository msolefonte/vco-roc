local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_1_iron_into_gold;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
				{
					type HAVE_AT_LEAST_X_MONEY;
					total 500048;
				}

			    objective
			    {
			        type TODO;
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
			victory_type vco_victory_type_alternative_2_in_harmony;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 8;

					province wh3_main_chaos_province_broken_lands_of_tian_li;
					province wh3_main_chaos_province_celestial_riverlands,
                    province wh3_main_chaos_province_forests_of_the_moon;
					province wh3_main_chaos_province_gunpowder_road;
					province wh3_main_chaos_province_imperial_road;
					province wh3_main_chaos_province_lands_of_stone_and_steel;
					province wh3_main_chaos_province_warpstone_desert;
					province wh3_main_chaos_province_wastelands_of_jinshen;
				}

			    objective
			    {
			        type CONTROL_N_PROVINCES_INCLUDING;
			        total 3;

                    province wh3_main_chaos_province_central_great_bastion;
                    province wh3_main_chaos_province_eastern_great_bastion;
					province wh3_main_chaos_province_western_great_bastion;
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
			        type TODO;
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