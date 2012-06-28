var spawnPoint : Transform;
var theShadow : GameObject;


function OnTriggerEnter (other : Collider) 
{
	other.gameObject.active = false;
	theShadow.active = false;
	
	yield new WaitForSeconds (0.5);
	
    other.transform.position = spawnPoint.position;
    
    other.gameObject.active = true;
    theShadow.active = true;
}