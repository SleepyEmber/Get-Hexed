// Make the scrolls stack to 16
<item:hexcasting:scroll>.setMaxStackSize(16);

// Furnish breakability
for block in game.getBlocks() {
    if (block.registryName.namespace == "furnish") {
        var name = block.registryName.path;
        if (name.endsWith("amphora") || name.endsWith("plate") || name.endsWith("showcase")) {
            <tag:blocks:minecraft:mineable/pickaxe>.add(block);
            <tag:blocks:minecraft:needs_wood_tool>.add(block);
        } else {
            <tag:blocks:minecraft:mineable/axe>.add(block);
        }
    }
}
