class UDNBot extends UTBot;

var Actor Destination;

protected event ExecuteWhatToDoNext()
{
	`log("roaming");
	GotoState('Roaming');
}

state Roaming
{
Begin:
	// if we just began or have reached the dest
	// pick a new one
	if(Destination == none || Pawn.ReachedDestination(Destination))
	{
		`log("no destination. finding new destination");
		Destination = FindRandomDest();
		if( Destination == None )
		{
			`log("no destination found.");
		}
		else 
		{
			`log("destination found.");
		}
	}
	else
	{
		`log("moving towards destination...");
	}
	

	// Find a path to the dest and move to the next node in the path
	MoveToward(FindPathToward(Destination), FindPathToward(Destination));
	
	// fire off next decision loop
	LatentWhatToDoNext();
}


defaultproperties
{
}

	