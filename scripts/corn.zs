import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.tag.MCTag;

var cornificationIngs = [<tag:items:forge:tools/knives>, <item:minecraft:moss_block>] as IIngredient[];

craftingTable.addShapeless(
	"mossknife", 
	<item:farmersdelight:flint_knife>.withTag({"CustomModelData":3151814}),
	cornificationIngs,
	(usualOut as IItemStack, inputs as IItemStack[]) => {
		var knife = inputs[0];
		return knife.withTag(knife.tag.merge({"CustomModelData":3151814}));
});
