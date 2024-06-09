#modloader neoforge
/*
 * Author: RebelliousUno
*/
import crafttweaker.neoforge.api.event.block.fluid.FluidPlaceBlockEvent;

events.register<crafttweaker.neoforge.api.event.block.fluid.FluidPlaceBlockEvent>(event => {
      event.newState = getNewBlockState(event.liquidPos, event.level, event.newState);		
});
