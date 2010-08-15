class UTPawn_SuperRegen extends UTPawn;

var int RegenPerSecond;


simulated function PostBeginPlay()
{
	 Super.PostBeginPlay();
	 
	 SetTimer(1.0,true);
}


function Timer()
{
	 if(Controller.IsA('PlayerController') && !IsInPain() && Health<SuperHealthMax)
	 {
		  `log("regenning");
		  Health = Min(Health+RegenPerSecond, SuperHealthMax);
	 }
}


defaultproperties
{
	 RegenPerSecond = 10;
}
