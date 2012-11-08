class SpawningObject extends Actor;

var StaticMesh MeshArchetype;
var StaticMeshActor MeshActorTemplate;

ClassGroup(MyGame, MyCustomActors);

//Class is incomplete, goal of it is to be able to spawn an object into 3D space during real-time gameplay
function CreateNewObject()
{
	local StaticMesh MeshInstance; 
	MeshInstance = new Class'Object' (MeshArchetype); //Not sure if this is correct or necessary
	bool isSelected; //When an object is selected within the UI in real-time gameplay, this should return true
	if(isSelected == true)
	{
		SetHidden(false); //allows the object to be visible to the player in-game
		SetDrawScale3D(Vect(1.f, 1.f, 1.f)); //sets the size of the object in 3D space
		CreateNavMeshObstatcle();//spawns the object in 3D space (?)
	}
}