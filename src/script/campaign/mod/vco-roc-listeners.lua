-- [LIBRARY] --

local function _vco_roc_count_regions_with_highest_corruption_being(corruption_key)
    local regions_count = 0;

    local province_list = cm:model():world():province_list();
    for i = 0, province_list:num_items() - 1 do
        local current_province = province_list:item_at(i);
        for i, region in model_pairs(current_province:regions()) do
            local highest_corruption_in_region = cm:get_highest_corruption_in_region(region) or '';
            if highest_corruption_in_region == corruption_key then
                regions_count = regions_count + 1;
            end;
        end;
    end;

    return regions_count;
end;

-- [CHECKS] --

local function check_vco_roc_cth_the_western_provinces_caravans(faction_key)
    local REQUIRED_NUM_CARAVANS_COMPLETED_VICTORY = 9;
    local num_caravans_completed = cm:get_saved_value("caravans_completed_" .. faction_key) or 0;

    if num_caravans_completed < REQUIRED_NUM_CARAVANS_COMPLETED_VICTORY then
        cm:set_scripted_mission_text("wh_main_long_victory", "vco_roc_cth_the_western_provinces_caravans", "mission_text_text_vco_roc_cth_the_western_provinces_caravans_"..num_caravans_completed);
    else
        cm:set_scripted_mission_text("wh_main_long_victory", "vco_roc_cth_the_western_provinces_caravans", "mission_text_text_vco_roc_cth_the_western_provinces_caravans");
        cm:complete_scripted_mission_objective("wh3_main_cth_the_western_provinces", "wh_main_long_victory", "vco_roc_cth_the_western_provinces_caravans", true);
    end;
end

local function check_vco_roc_cth_the_western_provinces_goods(faction_key)
    local REQUIRED_TOTAL_GOODS_MOVED_VICTORY = 13140;
    local total_goods_moved = cm:get_saved_value("caravan_goods_moved_" .. faction_key) or 0;

    if total_goods_moved < REQUIRED_TOTAL_GOODS_MOVED_VICTORY then
        percentage_completed = math.floor(total_goods_moved / REQUIRED_TOTAL_GOODS_MOVED_VICTORY * 100)
        cm:set_scripted_mission_text("wh_main_long_victory", "vco_roc_cth_the_western_provinces_goods", "mission_text_text_vco_roc_cth_the_western_provinces_goods_"..percentage_completed);
    else
        cm:set_scripted_mission_text("wh_main_long_victory", "vco_roc_cth_the_western_provinces_goods", "mission_text_text_vco_roc_cth_the_western_provinces_goods");
        cm:complete_scripted_mission_objective("wh3_main_cth_the_western_provinces", "wh_main_long_victory", "vco_roc_cth_the_western_provinces_goods", true);
    end;
end

local function check_vco_roc_daemons_of_chaos_the_great_game(faction_key, corruption_key)
    local REQUIRED_CORRUPTED_REGIONS_VICTORY = 50;
    local corrupted_regions = _vco_roc_count_regions_with_highest_corruption_being(corruption_key);

    if corrupted_regions < REQUIRED_CORRUPTED_REGIONS_VICTORY then
        cm:set_scripted_mission_text("wh_main_long_victory", "vco_roc_"..faction_key.."_the_great_game", "mission_text_text_vco_roc_the_great_game_completed_"..corrupted_regions);
    else
        cm:set_scripted_mission_text("wh_main_long_victory", "vco_roc_"..faction_key.."_the_great_game", "mission_text_text_vco_roc_the_great_game_completed");
        cm:complete_scripted_mission_objective(faction_key, "wh_main_long_victory", "vco_roc_"..faction_key.."_the_great_game", true);
    end;
end

local function check_vco_roc_ogre_kingdoms_the_maw_that_walks(context)
    local REQUIRED_MEAT_OFFERED_VICTORY = 200;
    local total_meat_offered = context:factor_spent();

    if total_meat_offered < REQUIRED_MEAT_OFFERED_VICTORY then
        percentage_completed = math.floor(total_meat_offered / REQUIRED_MEAT_OFFERED_VICTORY * 100)
        cm:set_scripted_mission_text("wh_main_long_victory", "vco_roc_ogr_the_maw_that_walks", "mission_text_text_vco_roc_ogr_the_maw_that_walks_"..percentage_completed);
    else
        cm:set_scripted_mission_text("wh_main_long_victory", "vco_roc_ogr_the_maw_that_walks", "mission_text_text_vco_roc_ogr_the_maw_that_walks");
        cm:complete_scripted_mission_objective(context:faction():name(), "wh_main_long_victory", "vco_roc_ogr_the_maw_that_walks", true);
    end;
end

-- [LISTENERS] --

function add_listeners()
    out("## Adding Victory Conditions Overhaul - Realm of Chaos Listeners ##");

    out("#### VCO-ROC CATHAY ####");
    core:add_listener(
        "vco_roc_cth_all_checks",
        "FactionTurnEnd",
        function(context)
            return context:faction():name() == "wh3_main_cth_the_western_provinces" and context:faction():is_human();
        end,
        function(context)
            check_vco_roc_cth_the_western_provinces_caravans(context:faction():name());
            check_vco_roc_cth_the_western_provinces_goods(context:faction():name());
        end,
        true
    );

    out("#### VCO-ROC DAEMONS OF CHAOS ####");
    core:add_listener(
        "vco_roc_doc_the_great_game_check",
        "FactionTurnStart",
        function(context)
            return context:faction():is_human();
        end,
        function(context)
            local corruption_key = "";
            if context:faction():culture() == "wh3_main_kho_khorne" then
                corruption_key = "wh3_main_corruption_khorne";
            elseif context:faction():culture() == "wh3_main_nur_nurgle" then
                corruption_key = "wh3_main_corruption_nurgle";
            elseif context:faction():culture() == "wh3_main_sla_slaanesh" then
                corruption_key = "wh3_main_corruption_slaanesh";
            elseif context:faction():culture() == "wh3_main_tze_tzeentch" then
                corruption_key = "wh3_main_corruption_tzeentch";
            end;

            check_vco_roc_daemons_of_chaos_the_great_game(context:faction():name(), corruption_key);
        end,
        true
    );

    out("#### VCO-ROC OGRE KINGDOMS ####");
    core:add_listener(
        "vco_roc_ogr_meat_checks",
        "ScriptEventTrackedPooledResourceChanged",
        function(context)
            return context:faction():is_human() and context:faction():name() == "wh3_main_ogr_disciples_of_the_maw" and context:resource():key() == "wh3_main_ogr_meat" and context:factor():key() == "offered_to_the_great_maw";
        end,
        function(context)
            check_vco_roc_ogre_kingdoms_the_maw_that_walks(context);
        end,
        true
    );
end

function main()
    cm:add_first_tick_callback(add_listeners)
end

main();