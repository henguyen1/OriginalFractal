public void setup()
{
	size(800,800);
}
public void draw()
{
	fractal(400,400,800);
}
public void fractal(float x, float y, float z)
{	// biggest to smallest
	// draws biggest first
	if(z <= 1)
	{
		ellipse(x,y,z,z);
	}
	else 
	{
		ellipse(x/2,y,z/2,z/2);
		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		ellipse(x*(1.5),y,z/2,z/2);
		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		fractal(x/2,y,z/2);
	}	
}