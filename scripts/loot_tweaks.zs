import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.loot.condition.builder.LootConditionBuilder;
import crafttweaker.api.loot.condition.DamageSourceLootCondition;
import crafttweaker.api.loot.condition.KilledByPlayerLootCondition;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdRegexLootCondition;
import crafttweaker.api.loot.condition.WeatherCheckLootCondition;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.predicate.DamageSourcePredicate;
import crafttweaker.api.predicate.EntityEquipmentPredicate;
import crafttweaker.api.predicate.EntityPredicate;
import crafttweaker.api.predicate.ItemPredicate;
import stdlib.List;

var valuables = [
    <item:minecraft:diamond>.definition, 
    <item:minecraft:emerald>.definition, 
    <item:minecraft:gold_ingot>.definition, 
    <item:minecraft:iron_ingot>.definition
] as ItemDefinition[];

var equipment = [
    <item:minecraft:diamond_pickaxe>.definition,
    <item:minecraft:stone_pickaxe>.definition,
    <item:minecraft:iron_pickaxe>.definition,
    <item:minecraft:golden_pickaxe>.definition,
    <item:minecraft:diamond_pickaxe>.definition,
    <item:minecraft:diamond_chestplate>.definition,
    <item:minecraft:diamond_leggings>.definition,
    <item:minecraft:diamond_helmet>.definition,
    <item:minecraft:diamond_boots>.definition,
    <item:minecraft:iron_chestplate>.definition,
    <item:minecraft:iron_leggings>.definition,
    <item:minecraft:iron_helmet>.definition,
    <item:minecraft:iron_boots>.definition,
] as ItemDefinition[];

loot.modifiers.register(
    "nerf_mining_system", 
    LootConditions.only(LootTableIdRegexLootCondition.create("dungeons_arise:chests/mining_system/.*")),
    (drops, ctx) => {
        val resources = new List<IItemStack>();
        val removals = new List<IItemStack>();
        for drop in drops {
            if (drop.definition in valuables) {
                resources.add(drop);
            } else if (drop.definition in equipment) {
                if (ctx.random.nextFloat() > 0.15f) {
                    removals.add(drop);
                }
            }
        }
        for drop in resources {
            drops.remove(drop);
            val item = drop.asMutable();
            item.shrink(item.amount * 3 / 4);
            drops.add(item);
            print(item.commandString);
        }
        for drop in removals {
            drops.remove(drop);
            print(drop.commandString);
        }
        return drops;
});
