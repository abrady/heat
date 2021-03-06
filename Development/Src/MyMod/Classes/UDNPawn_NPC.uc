/**
 * AI override test
 */
class UDNPawn_NPC extends UTPawn
				  placeable;

var(NPC) SkeletalMeshActor NPCMesh;
var(NPC) class<AIController> NPCController;

simulated event PostBeginPlay()
{
	if(NPCController != none)
	{
		// set the existing ControllerClass to our new NPCController class
		ControllerClass = NPCController;
	}
	Super.PostBeginPlay();
}


// override to do nothing
simulated function SetCharacterClassFromInfo(class<UTFamilyInfo> Info)
{
}


defaultproperties
{
	// setup default NPC mesh
	Begin Object Class=SkeletalmeshComponent Name=NPCMesh0
		SkeletalMesh=SkeletalMesh'CH_LIAM_Cathode.Mesh.SK_CH_LIAM_Cathode'
		PhysicsAsset=PhysicsAsset'CH_AnimCorrupt.Mesh.SK_CH_Corrupt_Male_Physics'
		AnimSets(0)=AnimSet'CH_AnimHuman.Anims.K_AnimHuman_BaseMale'
		AnimtreeTemplate=AnimTree'CH_AnimHuman_Tree.AT_CH_Human'{
	End Object

   NPCMesh=NPCMesh0
   Mesh=NPCMesh0
   Components.Add(NPCMesh0)

   // ponts to your custom AIController class as the default
   NPCController=class'Engine.AIController'
}

		
