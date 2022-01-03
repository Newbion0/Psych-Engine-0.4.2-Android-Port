function onCreate()
	-- background shit
	makeLuaSprite('henrySky', 'henrySky', -600, -600);
	setScrollFactor('henrySky', 0.9, 0.9);
	scaleObject('henrySky', 2.1, 2.1);
	
	makeLuaSprite('henryGround', 'henryGround', -750, 150);
	setScrollFactor('henryGround', 1, 1);
	scaleObject('henryGround', 2.1, 2.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('henryMountains', 'henryMountains', -625, -250);
		setScrollFactor('henryMountains', 0.9, 0.9);
		scaleObject('henryMountains', 2.1, 2.1);

		makeLuaSprite('henryRock', 'henryRock', -700, 150);
		setScrollFactor('henryRock', 1, 1);
		scaleObject('henryRock', 2.1, 2.1);
	end

	addLuaSprite('henrySky', false);
	addLuaSprite('henryMountains', false);
	addLuaSprite('henryGround', false);
	addLuaSprite('henryRock', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end