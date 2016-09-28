//your code here
Particle[] chou;
public void setup()
{
	//your code here
	size (500,500);
	chou = new Particle[200];
	for (int i = 0; i < chou.length; i++)
	{
		chou[i] = new NormalParticle();
		chou [0] = new OddballParticle();
	}
}
void draw()
{
	//your code here
	background(0);
	
	for (int i = 0; i < chou.length; i++)
	{
		chou[i].move();
		chou[i].show();
	}

}
class NormalParticle implements Particle
{
	//your code here
	int myColor;
	double speed, myX, myY, angle;
	NormalParticle ()
	{
		
		myX = 250;
		myY = 250;
		angle = Math.random()*2*Math.PI;
		speed = Math.random()*20;
	}
	public void move ()
	{
		myX = myX + (Math.cos((float)angle) * speed);
		myY = myY + (Math.sin((float)angle) * speed);
	}
	public void show()
	{
		myColor = color ((int)(Math.random()*255)+50, (int)(Math.random()*255)+20, (int)(Math.random()*255)+80);
		fill(myColor);
		ellipse((float)myX, (float)myY, 5, 5);
	}
}
interface Particle
{
	//your code here
	public void move();
	public void show();

}
class OddballParticle implements Particle //uses an interface
{
	//your code here
	double speed, myX, myY, angle;
	OddballParticle()
	{
		myX = 250;
		myY = 250;
		angle = 0.25*PI;
		speed = Math.random()*5;
	}
	public void move()
	{
		myX = myX + (Math.cos((float)angle) * speed);
		myY = myY + (Math.sin((float)angle) * speed);
	}
	public void show()
	{
		fill(#ff99ff);
		rect((float)myX, (float)myY, 10, 10, -10);
	}
}
class JumboParticle //uses inheritance
{
	//your code here
}

