import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;

function woodcut(inputName as string, input as IIngredient, output as IItemStack) as void {
    <recipetype:corail_woodcutter:woodcutting>.addJsonRecipe(inputName + "_to_" + output.registryName.path, {
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
// <item:hexerei:stripped_mahogany_log>
// <item:hexerei:stripped_mahogany_wood>
woodcutSet("hexe_mahogany", <item:hexerei:mahogany_planks>,
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
woodcutSet("hexe_willow", <item:hexerei:willow_planks>,
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
woodcut("cherry", <item:biomesoplenty:cherry_planks>, <item:biomesoplenty:cherry_sign>);
woodcut("cherry_log", <item:biomesoplenty:cherry_log>, <item:biomesoplenty:cherry_sign> * 4); 
woodcut("dead", <item:biomesoplenty:dead_planks>, <item:biomesoplenty:dead_sign>);
woodcut("dead_log", <item:biomesoplenty:dead_log>, <item:biomesoplenty:dead_sign> * 4); 
woodcut("fir", <item:biomesoplenty:fir_planks>, <item:biomesoplenty:fir_sign>);
woodcut("fir_log", <item:biomesoplenty:fir_log>, <item:biomesoplenty:fir_sign> * 4); 
woodcut("hellbark", <item:biomesoplenty:hellbark_planks>, <item:biomesoplenty:hellbark_sign>);
woodcut("hellbark_log", <item:biomesoplenty:hellbark_log>, <item:biomesoplenty:hellbark_sign> * 4); 
woodcut("jacaranda", <item:biomesoplenty:jacaranda_planks>, <item:biomesoplenty:jacaranda_sign>);
woodcut("jacaranda_log", <item:biomesoplenty:jacaranda_log>, <item:biomesoplenty:jacaranda_sign> * 4); 
woodcut("magic", <item:biomesoplenty:magic_planks>, <item:biomesoplenty:magic_sign>);
woodcut("magic_log", <item:biomesoplenty:magic_log>, <item:biomesoplenty:magic_sign> * 4); 
woodcut("mahogany", <item:biomesoplenty:mahogany_planks>, <item:biomesoplenty:mahogany_sign>);
woodcut("mahogany_log", <item:biomesoplenty:mahogany_log>, <item:biomesoplenty:mahogany_sign> * 4); 
woodcut("palm", <item:biomesoplenty:palm_planks>, <item:biomesoplenty:palm_sign>);
woodcut("palm_log", <item:biomesoplenty:palm_log>, <item:biomesoplenty:palm_sign> * 4); 
woodcut("redwood", <item:biomesoplenty:redwood_planks>, <item:biomesoplenty:redwood_sign>);
woodcut("redwood_log", <item:biomesoplenty:redwood_log>, <item:biomesoplenty:redwood_sign> * 4); 
woodcut("umbran", <item:biomesoplenty:umbran_planks>, <item:biomesoplenty:umbran_sign>);
woodcut("umbran_log", <item:biomesoplenty:umbran_log>, <item:biomesoplenty:umbran_sign> * 4); 
woodcut("willow", <item:biomesoplenty:willow_planks>, <item:biomesoplenty:willow_sign>);
woodcut("willow_log", <item:biomesoplenty:willow_log>, <item:biomesoplenty:willow_sign> * 4);
