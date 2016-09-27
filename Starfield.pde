//your code here
NormalParticle[] chou;
void setup()
{
	//your code here
	size (500,500);
	chou = new NormalParticle[1];
	for (int i = 0; i < chou.length; i++)
	{
		chou[i] = new NormalParticle();
	}
}
void draw()
{
	//your code here
	background(0);
	
		chou[i].move();
		chou[i].show();

}
class NormalParticle
{
	//your code here
	int myColor;
	double speed, myX, myY, angle;
	NormalParticle ()
	{
		
		myX = 250;
		myY = 250;
		angle = Math.random()*2*PI;
		speed = Math.random()*20;
	}
	void move ()
	{
		myX = myX + (cos((float)angle) * speed);
		myY = myY + (sin((float)angle) * speed);
	}
	void show()
	{
		myColor = color ((int)(Math.random()*255)+100, (int)(Math.random()*255)+100, (int)(Math.random()*255)+100);
		fill(myColor);
		ellipse((float)myX, (float)myY, 10,10);

	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

