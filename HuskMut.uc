
class HuskMut extends KFMutator;

function ModifyAI(Pawn AIPawn)
{
	if((KFPawn_Monster(AIPawn).MonsterArchPath == "ZED_ARCH.ZED_Husk_Archetype") && AIPawn.Class!= class'DumbHusk')
    {
        replaceAI(AIPawn, "HuskMod.DumbHusk");
    }
}

function replaceAI(Pawn AIPawn, string MonsterClass)
{
    local Vector Loc;
    local Rotator Rot;
    local KFPawn Zed;
    local class<KFPawn_Monster> SpawnClass;

    Loc = AIPawn.Location;
    Rot = AIPawn.Rotation;
    AIPawn.Destroy();
    SpawnClass = class<KFPawn_Monster>(DynamicLoadObject(MonsterClass, class'Class'));
    Zed = Spawn(SpawnClass,,, Loc, Rot,, false);
    
    if(Zed != none)
    {
        Zed.SpawnDefaultController();
        
        if(KFAIController(Zed.Controller) != none)
        {
            KFAIController(Zed.Controller).SetTeam(1);
        }
    }
    
}
