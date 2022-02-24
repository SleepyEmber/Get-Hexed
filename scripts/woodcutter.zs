import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;

function woodcut(inputName as string, input as IIngredient, output as IItemStack) as void {
    <recipetype:corail_woodcutter:woodcutting>.addJsonRecipe(output.registryName.path + "_from_" + inputName, {
        "ingredient": input,
        "result": output.registryName,
        "count": output.amount
    });
}

function woodcutSet(
        plankName as string, plank as IItemStack, 
        log as IIngredient,
        boat as IItemStack?,
        button as IItemStack?,
        door as IItemStack?,
        fence_gate as IItemStack?,
        fence as IItemStack?,
        pressure_plate as IItemStack?,
        sign as IItemStack?,
        slab as IItemStack?,
        stairs as IItemStack?,
        trapdoor as IItemStack?,
        vertical_slab as IItemStack?
) as void {
    var logName = plankName + "_log";

    if (boat != null)               woodcut(logName, log, boat);
    if (button != null)             woodcut(logName, log, button * 4);
    if (door != null)               woodcut(logName, log, door * 4);
    if (fence_gate != null)         woodcut(logName, log, fence_gate);
    if (fence != null)              woodcut(logName, log, fence * 4);
                                    woodcut(logName, log, plank * 4);
    if (pressure_plate != null)     woodcut(logName, log, pressure_plate * 4);
    if (sign != null)               woodcut(logName, log, sign * 4);
    if (slab != null)               woodcut(logName, log, slab * 8);
    if (stairs != null)             woodcut(logName, log, stairs * 4);
    if (trapdoor != null)           woodcut(logName, log, trapdoor * 4);
    if (vertical_slab != null)      woodcut(logName, log, vertical_slab * 8);

    if (button != null)             woodcut(plankName, plank, button);
    if (door != null)               woodcut(plankName, plank, door);
    if (fence != null)              woodcut(plankName, plank, fence);
    if (pressure_plate != null)     woodcut(plankName, plank, pressure_plate);
    if (sign != null)               woodcut(plankName, plank, sign);
    if (slab != null)               woodcut(plankName, plank, slab * 2);
    if (stairs != null)             woodcut(plankName, plank, stairs);
    if (trapdoor != null)           woodcut(plankName, plank, trapdoor);
    if (vertical_slab != null)      woodcut(plankName, plank, vertical_slab * 2);
}

woodcutSet("mahogany", <item:hexerei:mahogany_planks>,
    <item:hexerei:mahogany_log> | <item:hexerei:mahogany_wood> 
        | <item:hexerei:stripped_mahogany_log> | <item:hexerei:stripped_mahogany_wood>,
    null, 
    <item:hexerei:mahogany_button>, 
    <item:hexerei:mahogany_door>,
    <item:hexerei:mahogany_fence_gate>,
    <item:hexerei:mahogany_fence>,
    <item:hexerei:mahogany_pressure_plate>,
    null,
    <item:hexerei:mahogany_slab>,
    <item:hexerei:mahogany_stairs>,
    <item:hexerei:mahogany_trapdoor>,
    null
);
woodcutSet("willow", <item:hexerei:willow_planks>,
    <item:hexerei:willow_log> | <item:hexerei:willow_wood> 
        | <item:hexerei:stripped_willow_log> | <item:hexerei:stripped_willow_wood>,
    null, 
    <item:hexerei:willow_button>, 
    <item:hexerei:willow_door>,
    <item:hexerei:willow_fence_gate>,
    <item:hexerei:willow_fence>,
    <item:hexerei:willow_pressure_plate>,
    null,
    <item:hexerei:willow_slab>,
    <item:hexerei:willow_stairs>,
    <item:hexerei:willow_trapdoor>,
    null
);
woodcutSet("twisted", 
    <item:architects_palette:twisted_planks>,
    <tag:items:architects_palette:twisted_logs>,
    null,
    <item:architects_palette:twisted_button>,
    <item:architects_palette:twisted_door>,
    <item:architects_palette:twisted_fence_gate>,
    <item:architects_palette:twisted_fence>,
    <item:architects_palette:twisted_pressure_plate>,
    null,
    <item:architects_palette:twisted_slab>,
    <item:architects_palette:twisted_stairs>,
    <item:architects_palette:twisted_trapdoor>,
    <item:architects_palette:twisted_vertical_slab>
);
woodcut("twisted", <item:architects_palette:twisted_planks>, <item:architects_palette:twisted_boards>);
woodcutSet("livingwood", 
    <item:botania:livingwood_planks>,
    <tag:items:botania:livingwood_logs>,
    null, null, null,
    <item:botania:livingwood_fence_gate>,
    <item:botania:livingwood_fence>,
    null, null,
    <item:botania:livingwood_planks_slab>,
    <item:botania:livingwood_planks_stairs>,
    null, null
);
woodcut("livingwood", <item:botania:livingwood>, <item:botania:livingwood_slab> * 2);
woodcut("livingwood", <item:botania:livingwood>, <item:botania:livingwood_stairs>);
woodcut("livingwood", <item:botania:livingwood>, <item:botania:livingwood_wall>);
woodcut("stripped_livingwood", <item:botania:stripped_livingwood>, <item:botania:stripped_livingwood_slab> * 2);
woodcut("stripped_livingwood", <item:botania:stripped_livingwood>, <item:botania:stripped_livingwood_stairs>);
woodcut("stripped_livingwood", <item:botania:stripped_livingwood>, <item:botania:stripped_livingwood_wall>);
woodcut("livingwood_planks", <item:botania:livingwood_planks>, <item:botania:framed_livingwood>);
woodcut("livingwood_planks", <item:botania:livingwood_planks>, <item:botania:pattern_framed_livingwood>);

woodcutSet("dreamwood", 
    <item:botania:dreamwood_planks>,
    <tag:items:botania:dreamwood_logs>,
    null, null, null,
    <item:botania:dreamwood_fence_gate>,
    <item:botania:dreamwood_fence>,
    null, null,
    <item:botania:dreamwood_planks_slab>,
    <item:botania:dreamwood_planks_stairs>,
    null, null
);
woodcut("dreamwood", <item:botania:dreamwood>, <item:botania:dreamwood_slab> * 2);
woodcut("dreamwood", <item:botania:dreamwood>, <item:botania:dreamwood_stairs>);
woodcut("dreamwood", <item:botania:dreamwood>, <item:botania:dreamwood_wall>);
woodcut("stripped_dreamwood", <item:botania:stripped_dreamwood>, <item:botania:stripped_dreamwood_slab> * 2);
woodcut("stripped_dreamwood", <item:botania:stripped_dreamwood>, <item:botania:stripped_dreamwood_stairs>);
woodcut("stripped_dreamwood", <item:botania:stripped_dreamwood>, <item:botania:stripped_dreamwood_wall>);
woodcut("dreamwood_planks", <item:botania:dreamwood_planks>, <item:botania:framed_dreamwood>);
woodcut("dreamwood_planks", <item:botania:dreamwood_planks>, <item:botania:pattern_framed_dreamwood>);
woodcut("shimmerwood", <item:botania:shimmerwood_planks>, <item:botania:shimmerwood_planks_slab> * 2);
woodcut("shimmerwood", <item:botania:shimmerwood_planks>, <item:botania:shimmerwood_planks_stairs>);
woodcutSet("archwood",
    <item:ars_nouveau:archwood_planks>, 
    <tag:items:forge:logs/archwood>,
    null,
    <item:ars_nouveau:archwood_button>,
    <item:ars_nouveau:archwood_door>,
    <item:ars_nouveau:archwood_fence_gate>,
    <item:ars_nouveau:archwood_fence>,
    <item:ars_nouveau:archwood_pressure_plate>,
    null,
    <item:ars_nouveau:archwood_slab>,
    <item:ars_nouveau:archwood_stairs>,
    <item:ars_nouveau:archwood_trapdoor>,
    null
);
woodcutSet("greenheart",
    <item:tconstruct:greenheart_planks>,
    <tag:items:tconstruct:greenheart_logs>,
    null,
    <item:tconstruct:greenheart_button>,
    <item:tconstruct:greenheart_door>,
    <item:tconstruct:greenheart_fence_gate>,
    <item:tconstruct:greenheart_fence>,
    <item:tconstruct:greenheart_pressure_plate>,
    <item:tconstruct:greenheart_sign>,
    <item:tconstruct:greenheart_planks_slab>,
    <item:tconstruct:greenheart_planks_stairs>,
    <item:tconstruct:greenheart_trapdoor>,
    null
);
woodcutSet("skyroot",
    <item:tconstruct:skyroot_planks>,
    <tag:items:tconstruct:skyroot_logs>,
    null,
    <item:tconstruct:skyroot_button>,
    <item:tconstruct:skyroot_door>,
    <item:tconstruct:skyroot_fence_gate>,
    <item:tconstruct:skyroot_fence>,
    <item:tconstruct:skyroot_pressure_plate>,
    <item:tconstruct:skyroot_sign>,
    <item:tconstruct:skyroot_planks_slab>,
    <item:tconstruct:skyroot_planks_stairs>,
    <item:tconstruct:skyroot_trapdoor>,
    null
);
woodcutSet("bloodshroom",
    <item:tconstruct:bloodshroom_planks>,
    <tag:items:tconstruct:bloodshroom_logs>,
    null,
    <item:tconstruct:bloodshroom_button>,
    <item:tconstruct:bloodshroom_door>,
    <item:tconstruct:bloodshroom_fence_gate>,
    <item:tconstruct:bloodshroom_fence>,
    <item:tconstruct:bloodshroom_pressure_plate>,
    <item:tconstruct:bloodshroom_sign>,
    <item:tconstruct:bloodshroom_planks_slab>,
    <item:tconstruct:bloodshroom_planks_stairs>,
    <item:tconstruct:bloodshroom_trapdoor>,
    null
);

woodcutSet("coconut",
    <item:ecologics:coconut_planks>,
    <tag:items:ecologics:coconut_logs>,
    <item:ecologics:coconut_boat>,
    <item:ecologics:coconut_button>,
    <item:ecologics:coconut_door>,
    <item:ecologics:coconut_fence_gate>,
    <item:ecologics:coconut_fence>,
    <item:ecologics:coconut_pressure_plate>,
    <item:ecologics:coconut_sign>,
    <item:ecologics:coconut_slab>,
    <item:ecologics:coconut_stairs>,
    <item:ecologics:coconut_trapdoor>,
    null
);

var treatedPlank = <tag:items:forge:treated_wood>;
woodcut("treated_wood", treatedPlank, <item:immersiveengineering:stick_treated> * 2);
woodcut("treated_wood", treatedPlank, <item:immersiveengineering:treated_fence>);
woodcut("treated_wood", <item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:slab_treated_wood_horizontal> * 2);
woodcut("treated_wood", <item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:stairs_treated_wood_horizontal>);
woodcut("treated_wood", <item:immersiveengineering:treated_wood_packaged>, <item:immersiveengineering:slab_treated_wood_packaged> * 2);
woodcut("treated_wood", <item:immersiveengineering:treated_wood_packaged>, <item:immersiveengineering:stairs_treated_wood_packaged> * 2);
woodcut("treated_wood", <item:immersiveengineering:treated_wood_vertical>, <item:immersiveengineering:slab_treated_wood_vertical> * 2);
woodcut("treated_wood", <item:immersiveengineering:treated_wood_vertical>, <item:immersiveengineering:stairs_treated_wood_vertical> * 2);
for plank in treatedPlank {
    woodcut("treated_wood", treatedPlank, plank);
}

woodcutSet("azalea", <item:quark:azalea_planks>,
    <tag:items:quark:azalea_logs>,
    <item:quark:azalea_boat>,
    <item:quark:azalea_button>,
    <item:quark:azalea_door>,
    <item:quark:azalea_fence_gate>,
    <item:quark:azalea_fence>,
    <item:quark:azalea_pressure_plate>,
    <item:quark:azalea_sign>,
    <item:quark:azalea_planks_slab>,
    <item:quark:azalea_planks_stairs>,
    <item:quark:azalea_trapdoor>,
    <item:quark:azalea_planks_vertical_slab>
);

woodcutSet("blossom", <item:quark:blossom_planks>,
    <tag:items:quark:blossom_logs>, 
    <item:quark:blossom_boat>,
    <item:quark:blossom_button>,
    <item:quark:blossom_door>,
    <item:quark:blossom_fence_gate>, 
    <item:quark:blossom_fence>,
    <item:quark:blossom_pressure_plate>, 
    <item:quark:blossom_sign>,
    <item:quark:blossom_planks_slab>,
    <item:quark:blossom_planks_stairs>,
    <item:quark:blossom_trapdoor>, 
    <item:quark:blossom_planks_vertical_slab>
);

var runewood = <tag:items:malum:runewood_logs>;
var runewoodPlanks = <item:malum:runewood_planks> | <item:malum:runewood_panel>
    | <item:malum:runewood_tiles> | <item:malum:cut_runewood_planks>
    | <item:malum:vertical_runewood_planks>;

woodcut("runewood_log", runewood, <item:malum:runewood_beam>);
woodcut("runewood_log", runewood, <item:malum:runewood_boat>);
woodcut("runewood_log", runewood, <item:malum:runewood_planks_button> * 4);
woodcut("runewood_log", runewood, <item:malum:runewood_door> * 4);
woodcut("runewood_log", runewood, <item:malum:runewood_planks_fence_gate>);
woodcut("runewood_log", runewood, <item:malum:runewood_planks_fence> * 4);
woodcut("runewood_log", runewood, <item:malum:runewood_planks> * 4);
woodcut("runewood_log", runewood, <item:malum:runewood_panel> * 4);
woodcut("runewood_log", runewood, <item:malum:runewood_tiles> * 4);
woodcut("runewood_log", runewood, <item:malum:cut_runewood_planks> * 4);
woodcut("runewood_log", runewood, <item:malum:vertical_runewood_planks> * 4);
woodcut("runewood_log", runewood, <item:malum:runewood_planks_pressure_plate> * 4);
woodcut("runewood_log", runewood, <item:malum:runewood_sign> * 4);
woodcut("runewood_log", runewood, <item:malum:runewood_planks_slab> * 8);
woodcut("runewood_log", runewood, <item:malum:runewood_panel_slab> * 8);
woodcut("runewood_log", runewood, <item:malum:runewood_tiles_slab> * 8);
woodcut("runewood_log", runewood, <item:malum:vertical_runewood_planks_slab> * 8);
woodcut("runewood_log", runewood, <item:malum:runewood_planks_stairs> * 4);
woodcut("runewood_log", runewood, <item:malum:runewood_panel_stairs> * 4);
woodcut("runewood_log", runewood, <item:malum:runewood_tiles_stairs> * 4);
woodcut("runewood_log", runewood, <item:malum:vertical_runewood_planks_stairs> * 4);
woodcut("runewood_log", runewood, <item:malum:runewood_trapdoor> * 4);
woodcut("runewood_log", runewood, <item:malum:solid_runewood_trapdoor> * 4);
woodcut("runewood", runewoodPlanks, <item:malum:runewood_planks_button>);
woodcut("runewood", runewoodPlanks, <item:malum:runewood_door>);
woodcut("runewood", runewoodPlanks, <item:malum:runewood_planks_fence>);
woodcut("runewood", runewoodPlanks, <item:malum:runewood_planks_pressure_plate>);
woodcut("runewood", runewoodPlanks, <item:malum:runewood_sign>);
woodcut("runewood", runewoodPlanks, <item:malum:runewood_trapdoor>);
woodcut("runewood", runewoodPlanks, <item:malum:solid_runewood_trapdoor>);
woodcut("runewood", <item:malum:runewood_planks>, <item:malum:runewood_planks_slab> * 2);
woodcut("runewood", <item:malum:runewood_panel>, <item:malum:runewood_panel_slab> * 2);
woodcut("runewood", <item:malum:runewood_tiles>, <item:malum:runewood_tiles_slab> * 2);
woodcut("runewood", <item:malum:vertical_runewood_planks>, <item:malum:vertical_runewood_planks_slab> * 2);
woodcut("runewood", <item:malum:runewood_planks>, <item:malum:runewood_planks_stairs> * 2);
woodcut("runewood", <item:malum:runewood_panel>, <item:malum:runewood_panel_stairs> * 2);
woodcut("runewood", <item:malum:runewood_tiles>, <item:malum:runewood_tiles_stairs> * 2);
woodcut("runewood", <item:malum:vertical_runewood_planks>, <item:malum:vertical_runewood_planks_stairs> * 2);
for plank in runewoodPlanks.items {
    woodcut("runewood", runewoodPlanks, plank);
}

var soulwood = <tag:items:malum:soulwood_logs>;
var soulwoodPlanks = <item:malum:soulwood_planks> | <item:malum:soulwood_panel>
    | <item:malum:soulwood_tiles> | <item:malum:cut_soulwood_planks>
    | <item:malum:vertical_soulwood_planks>;


woodcut("soulwood_log", soulwood, <item:malum:soulwood_beam>);
woodcut("soulwood_log", soulwood, <item:malum:soulwood_boat>);
woodcut("soulwood_log", soulwood, <item:malum:soulwood_planks_button> * 4);
woodcut("soulwood_log", soulwood, <item:malum:soulwood_door> * 4);
woodcut("soulwood_log", soulwood, <item:malum:soulwood_planks_fence_gate>);
woodcut("soulwood_log", soulwood, <item:malum:soulwood_planks_fence> * 4);
woodcut("soulwood_log", soulwood, <item:malum:soulwood_planks> * 4);
woodcut("soulwood_log", soulwood, <item:malum:soulwood_panel> * 4);
woodcut("soulwood_log", soulwood, <item:malum:soulwood_tiles> * 4);
woodcut("soulwood_log", soulwood, <item:malum:cut_soulwood_planks> * 4);
woodcut("soulwood_log", soulwood, <item:malum:vertical_soulwood_planks> * 4);
woodcut("soulwood_log", soulwood, <item:malum:soulwood_planks_pressure_plate> * 4);
woodcut("soulwood_log", soulwood, <item:malum:soulwood_sign> * 4);
woodcut("soulwood_log", soulwood, <item:malum:soulwood_planks_slab> * 8);
woodcut("soulwood_log", soulwood, <item:malum:soulwood_panel_slab> * 8);
woodcut("soulwood_log", soulwood, <item:malum:soulwood_tiles_slab> * 8);
woodcut("soulwood_log", soulwood, <item:malum:vertical_soulwood_planks_slab> * 8);
woodcut("soulwood_log", soulwood, <item:malum:soulwood_planks_stairs> * 4);
woodcut("soulwood_log", soulwood, <item:malum:soulwood_panel_stairs> * 4);
woodcut("soulwood_log", soulwood, <item:malum:soulwood_tiles_stairs> * 4);
woodcut("soulwood_log", soulwood, <item:malum:vertical_soulwood_planks_stairs> * 4);
woodcut("soulwood_log", soulwood, <item:malum:soulwood_trapdoor> * 4);
woodcut("soulwood_log", soulwood, <item:malum:solid_soulwood_trapdoor> * 4);
woodcut("soulwood", soulwoodPlanks, <item:malum:soulwood_planks_button>);
woodcut("soulwood", soulwoodPlanks, <item:malum:soulwood_door>);
woodcut("soulwood", soulwoodPlanks, <item:malum:soulwood_planks_fence>);
woodcut("soulwood", soulwoodPlanks, <item:malum:soulwood_planks_pressure_plate>);
woodcut("soulwood", soulwoodPlanks, <item:malum:soulwood_sign>);
woodcut("soulwood", soulwoodPlanks, <item:malum:soulwood_trapdoor>);
woodcut("soulwood", soulwoodPlanks, <item:malum:solid_soulwood_trapdoor>);
woodcut("soulwood", <item:malum:soulwood_planks>, <item:malum:soulwood_planks_slab> * 2);
woodcut("soulwood", <item:malum:soulwood_panel>, <item:malum:soulwood_panel_slab> * 2);
woodcut("soulwood", <item:malum:soulwood_tiles>, <item:malum:soulwood_tiles_slab> * 2);
woodcut("soulwood", <item:malum:vertical_soulwood_planks>, <item:malum:vertical_soulwood_planks_slab> * 2);
woodcut("soulwood", <item:malum:soulwood_planks>, <item:malum:soulwood_planks_stairs> * 2);
woodcut("soulwood", <item:malum:soulwood_panel>, <item:malum:soulwood_panel_stairs> * 2);
woodcut("soulwood", <item:malum:soulwood_tiles>, <item:malum:soulwood_tiles_stairs> * 2);
woodcut("soulwood", <item:malum:vertical_soulwood_planks>, <item:malum:vertical_soulwood_planks_stairs> * 2);
for plank in soulwoodPlanks.items {
    woodcut("soulwood", soulwoodPlanks, plank);
}

woodcut("nahuatl", <item:tconstruct:nahuatl>, <item:tconstruct:nahuatl_fence>);
woodcut("nahuatl", <item:tconstruct:nahuatl>, <item:tconstruct:nahuatl_slab> * 2);
woodcut("nahuatl", <item:tconstruct:nahuatl>, <item:tconstruct:nahuatl_stairs>);

woodcutSet("ancient", <item:naturesaura:ancient_planks>, 
    <item:naturesaura:ancient_log> | <item:naturesaura:ancient_bark>,
    null, null, null, null, null, null, null,
    <item:naturesaura:ancient_slab>,
    <item:naturesaura:ancient_stairs>,
    null, null
);
woodcut("ancient_log", <item:naturesaura:ancient_log> | <item:naturesaura:ancient_bark>, <item:naturesaura:ancient_stick> * 8);
woodcut("ancient", <item:naturesaura:ancient_planks>, <item:naturesaura:ancient_stick> * 2);
