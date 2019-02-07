public void setup()
{
	size(800,800);
}
public void draw()
{
	fractal(400,200,30);
}
public void fractal(int x, int y, int z)
{	// biggest to smallest
	// draws biggest first
	if(y >= 800)
	{
		ellipse(x,y,z,z);
	}
	else 
	{
		fractal(x,y+100,z+50);
		ellipse(x,y,z,z);
		
	}	
}