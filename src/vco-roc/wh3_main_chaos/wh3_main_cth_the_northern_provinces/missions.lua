local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_1_unification;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
			    {
			        type CONTROL_N_PROVINCES_INCLUDING;
			        total 3;

                    province wh3_main_chaos_province_central_great_bastion;
                    province wh3_main_chaos_province_eastern_great_bastion;
					province wh3_main_chaos_province_western_great_bastion;
			    }


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
			victory_type vco_victory_type_alternative_2_threat_elimination;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
                {
                    type DESTROY_FACTION;

                    faction wh3_main_kho_exiles_of_khorne;

                    faction wh3_main_dae_daemon_prince;

                    faction wh3_main_nur_poxmakers_of_nurgle;

                    faction wh3_main_tze_oracles_of_tzeentch;
                    faction wh3_main_tze_sarthoraels_watchers;

                    faction wh3_main_sla_seducers_of_slaanesh;

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