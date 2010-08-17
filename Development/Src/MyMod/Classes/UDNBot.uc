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
		Destination = FindRandomDest();
	}

	// Find a path to the dest and move to the next node in the path
	MoveToward(FindPathToward(Destination), FindPathToward(Destination));
	
	// fire off next decision loop
	LatentWhatToDoNext();
}


defaultproperties
{
}

	