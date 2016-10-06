//your code here
Particle[] chou;
public void setup()
{
	//your code here
	size (500,500);
	chou = new Particle[700];
	for (int i = 0; i < chou.length; i++)
	{
		chou[i] = new NormalParticle();
	}
	chou[699] = new OddballParticle();
	chou[49] = new JumboParticle();
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
	((OddballParticle)chou[699]).spin();
	moon();
	//noLoop();

}
	

void moon()
	{
		fill(255);
		ellipse(250, 250 , 50, 50);
		
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
		speed = Math.random()*5+1;
	}
	public void move ()
	{
		myX = myX + (Math.cos((float)angle) * speed);
		myY = myY + (Math.sin((float)angle) * speed);
	}
	public void show()
	{
		int fade = 120;
		myColor = color ((int)(Math.random()*255)+20, (int)(Math.random()*255)+30, (int)(Math.random()*255)+70, fade);
		fade += 5;
		fill(myColor);
		ellipse((float)myX, (float)myY, 3.2, 3.2);
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
	double speed, myX, myY, angle,rotationBy;
	OddballParticle()
	{
		myX = 0;
		myY = 0;
		angle = 0.25*PI;
		speed = Math.random()*5;
		rotationBy = 0;
	}
	public void move()
	{
		myX = myX + (Math.cos((float)angle) * speed);
		myY = myY + (Math.sin((float)angle) * speed);

	}
	public void show()
	{
			pushMatrix();
			translate(250,250);
			rotate((float)rotationBy);
			fill(#1a1aff);
			rect((float)myX, (float)myY, 20, 20, -30);
			popMatrix();
	}
	void spin()
	{
		rotationBy +=.05;
	}
}
class JumboParticle extends NormalParticle//uses inheritance
{
	JumboParticle ()
	{	
	}
	public void show()
	{
		myColor = color ((int)(Math.random()*255)+10, (int)(Math.random()*255)+50, (int)(Math.random()*255)+78);
		fill(myColor);
		ellipse((float)myX, (float)myY, 20, 20);
		
	}
}
void mousePressed()
{
	for (int i = 0; i < chou.length; i++)
	{
		chou[i] = new NormalParticle();
		chou[699] = new OddballParticle();
		chou[49] = new JumboParticle();
	}
}

