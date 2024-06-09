import crafttweaker.api.block.BlockState;
import crafttweaker.api.world.Level;
import crafttweaker.api.util.math.BlockPos;



public function getNewBlockState(liquidPos as BlockPos, level as Level, newState as BlockState) as BlockState {
	val yLevel = 0;
	if (liquidPos.y < yLevel) {
		var blockBelow = level.getBlockState(liquidPos.below());
		if (blockBelow == <blockstate:minecraft:sandstone>) {
			return <block:minecraft:tuff>.getDefaultState();
		} else if (newState == <blockstate:minecraft:cobblestone>) {
			return <block:minecraft:cobbled_deepslate>.getDefaultState();
		} else if (newState == <blockstate:minecraft:stone>){ 
			return <block:minecraft:deepslate>.getDefaultState();
		} else {
			return newState;
		}
	}
}