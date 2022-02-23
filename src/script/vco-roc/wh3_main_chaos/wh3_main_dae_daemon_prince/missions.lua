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
			        type DESTROY_FACTION;

                    faction wh3_main_ksl_the_ice_court;

                    confederation_valid;
			    }

			    objective
			    {
			        type DESTROY_FACTION;

                    faction wh3_main_ksl_brotherhood_of_the_bear;
                    faction wh3_main_ksl_druzhina_enclave;
                    faction wh3_main_ksl_ropsmenn_clan;
                    faction wh3_main_ksl_the_great_orthodoxy;
                    faction wh3_main_ksl_ungol_kindred;
                    faction wh3_main_ksl_ursun_revivalists;

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
			victory_type vco_victory_type_alternative_3_peacekeeping_mission;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
			    objective
			    {
			        type MAINTAIN_N_ALLIANCES;
			        total 4;

			        faction wh3_main_kho_exiles_of_khorne;
			        faction wh3_main_nur_poxmakers_of_nurgle;
			        faction wh3_main_tze_oracles_of_tzeentch;
			        faction wh3_main_sla_seducers_of_slaanesh;
			    }

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
    ]]
};

return missions;