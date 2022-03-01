local function check_vco_roc_cth_the_western_provinces_caravans(faction_key)
    local REQUIRED_NUM_CARAVANS_COMPLETED_VICTORY = 9;
    local num_caravans_completed = cm:get_saved_value("caravans_completed_" .. faction_key) or 0;

    if num_caravans_completed >= (REQUIRED_NUM_CARAVANS_COMPLETED_VICTORY / 4) then
        cm:set_scripted_mission_text("wh_main_long_victory", "vco_roc_cth_the_western_provinces_caravans", "mission_text_text_vco_roc_cth_the_western_provinces_caravans_25_50");
    end

    if num_caravans_completed >= (REQUIRED_NUM_CARAVANS_COMPLETED_VICTORY / 2) then
        cm:set_scripted_mission_text("wh_main_long_victory", "vco_roc_cth_the_western_provinces_caravans", "mission_text_text_vco_roc_cth_the_western_provinces_caravans_50_75");
    end

    if num_caravans_completed >= (REQUIRED_NUM_CARAVANS_COMPLETED_VICTORY * 3 / 4) then
        cm:set_scripted_mission_text("wh_main_long_victory", "vco_roc_cth_the_western_provinces_caravans", "mission_text_text_vco_roc_cth_the_western_provinces_caravans_75_100");
    end

    if num_caravans_completed >= REQUIRED_NUM_CARAVANS_COMPLETED_VICTORY then
        cm:set_scripted_mission_text("wh_main_long_victory", "vco_roc_cth_the_western_provinces_caravans", "mission_text_text_vco_roc_cth_the_western_provinces_caravans_100");
        m:complete_scripted_mission_objective("wh_main_long_victory", "vco_roc_cth_the_western_provinces_caravans", true);
    end
end

local function check_vco_roc_cth_the_western_provinces_goods(faction_key)
    local REQUIRED_TOTAL_GOODS_MOVED_VICTORY = 13140;
    local total_goods_moved = cm:get_saved_value("caravan_goods_moved_" .. faction_key) or 0;

    if total_goods_moved >= (REQUIRED_TOTAL_GOODS_MOVED_VICTORY / 4) then
        cm:set_scripted_mission_text("wh_main_long_victory", "vco_roc_cth_the_western_provinces_goods", "mission_text_text_vco_roc_cth_the_western_provinces_goods_25_50");
    end

    if total_goods_moved >= (REQUIRED_TOTAL_GOODS_MOVED_VICTORY / 2) then
        cm:set_scripted_mission_text("wh_main_long_victory", "vco_roc_cth_the_western_provinces_goods", "mission_text_text_vco_roc_cth_the_western_provinces_goods_50_75");
    end

    if total_goods_moved >= (REQUIRED_TOTAL_GOODS_MOVED_VICTORY * 3 / 4) then
        cm:set_scripted_mission_text("wh_main_long_victory", "vco_roc_cth_the_western_provinces_goods", "mission_text_text_vco_roc_cth_the_western_provinces_goods_75_100");
    end

    if total_goods_moved >= REQUIRED_TOTAL_GOODS_MOVED_VICTORY then
        cm:set_scripted_mission_text("wh_main_long_victory", "vco_roc_cth_the_western_provinces_goods", "mission_text_text_vco_roc_cth_the_western_provinces_goods_100");
        m:complete_scripted_mission_objective("wh_main_long_victory", "vco_roc_cth_the_western_provinces_goods", true);
    end
end

function add_listeners()
    out("## Adding Victory Conditions Overhaul - Realm of Chaos Listeners ##");

    out("#### VCO-ROC CATHAY ####");
    core:add_listener(
        "vco_roc_cth_the_western_provinces",
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
end

function main()
    cm:add_first_tick_callback(add_listeners)
end

main();