//your code here
NormalParticle chou;
void setup()
{
	//your code here
	size (500,500);
	chou = new NormalParticle();
}
void draw()
{
	//your code here
	background(0);
	chou.move();
	chou.show();

}
class NormalParticle
{
	//your code here
	int color;
	double speed, myX, myY, angle;
	NormalParticle ()
	{
		color = (int)(Math.random()*255)+80;
		myX = Math.random()*500;
		myY = Math.random()*500;
		angle = Math.random()*2*PI;
		speed = Math.random()*10;
	}
	void move ()
	{
		myX = myX + (cos(angle) * speed);
		myY = myY + (sin(angle) * speed);
	}
	void show()
	{
		fill(color, color, color);
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

