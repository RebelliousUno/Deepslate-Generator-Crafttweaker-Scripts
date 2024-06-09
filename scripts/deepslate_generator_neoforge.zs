#modloader neoforge
/*
 * Author: RebelliousUno
*/
import crafttweaker.neoforge.api.event.block.fluid.FluidPlaceBlockEvent;
import crafttweaker.api.block.BlockState;

var yLevel = 0;

events.register<crafttweaker.neoforge.api.event.block.fluid.FluidPlaceBlockEvent>(event => {
   if (event.liquidPos.y < yLevel) {
		var blockBelow = event.level.getBlockState(event.liquidPos.below());
		if (blockBelow == <blockstate:minecraft:sandstone>) {
			event.newState = <block:minecraft:tuff>.getDefaultState();
		} else if (event.newState == <blockstate:minecraft:cobblestone>) {
			event.newState = <block:minecraft:cobbled_deepslate>.getDefaultState();
		} else if (event.newState == <blockstate:minecraft:stone>){ 
			event.newState = <block:minecraft:deepslate>.getDefaultState();
		}
	}
});
