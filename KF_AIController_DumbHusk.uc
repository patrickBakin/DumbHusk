class KF_AIController_DumbHusk extends KFAIController_ZedHusk;

event PostBeginPlay()
{
	
	super.PostBeginPlay();


	//TimeBetweenFireBalls = 2147483647;
}

function bool CanDoFireball( float DistToTargetSq )
{
    return false;
}
defaultproperties
{
	FireballSpeed=4000.f
	FireballAimError=1.0f
	
}
