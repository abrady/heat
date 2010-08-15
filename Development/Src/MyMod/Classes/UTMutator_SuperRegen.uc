class UTMutator_SuperRegen extends UTMutator;

simulated function PostBeginPlay()
{
	 Super.PostBeginPlay();
	 WorldInfo.Game.DefaultPawnClass = class'MyMod.UTPawn_SuperRegen';
}

defaultproperties
{
	 GroupNames[0] = "PLAYERMOD"
}
