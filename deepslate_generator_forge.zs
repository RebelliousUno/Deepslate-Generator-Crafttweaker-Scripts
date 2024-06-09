import crafttweaker.forge.api.event.block.fluid.FluidPlaceBlockEvent;
import crafttweaker.api.block.BlockState;

var yLevel = 0;

events.register<crafttweaker.forge.api.event.block.fluid.FluidPlaceBlockEvent>(event => {
    if (event.liquidPos.y < yLevel) {
		if (event.newState == <blockstate:minecraft:cobblestone>) {
			println("cobblestone");
			event.newState = <block:minecraft:cobbled_deepslate>.getDefaultState();
		} else if (event.newState == <blockstate:minecraft:stone>){ 
			println("stone");
			event.newState = <block:minecraft:deepslate>.getDefaultState();
		}
	}
});
