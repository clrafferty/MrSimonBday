
confetti [] confettis = new confetti[150];
void setup()
{
  size(800,800);
  background(146, 219, 240);
  for(int i=0;i<150;i++){
  	confettis[i]=new confetti();
  }
}
void draw()
{
background(146, 219, 240);
mrSimon();
balloons();
cake();
for(int i=0;i<150;i++){
  	confettis[i].move();
  }
textSize(50);
strokeWeight(6);
stroke(252, 244, 0);
text("HAPPY BDAY MR SIMON",130,690);
}
class confetti{
	private double myX;
	private double myY;
	private double mySY;
	private int myR;
	public confetti(){
		myX=(double)(Math.random()*800);
		myY=0;
		mySY=(double)(Math.random()*1.5)+0.5;
		myR=(int)(Math.random()*100)+150;
	}
	public void move(){
		rectMode(CENTER);
		fill(myR,0,0);
		rect((float)myX,(float)myY,5,8);
		myX+=(double)(Math.random()*2)-1;
		myY+=mySY;
		if(myY>800)
			myY=0;
		if(myX>800||myX<0)
			myX=(double)(Math.random()*800);
	}
}
void cake(){
	fill(150);
	noStroke();
	ellipse(480,455,150,40);
	rectMode(CENTER);
	fill(47, 118, 250);
	rect(480,435,125,40,10,10,10,10);
	fill(79, 138, 247);
	rect(480,400,110,40,10,10,10,10);
	fill(115, 162, 250);
	rect(480,365,95,40,10,10,10,10);
	fill(155, 188, 250);
	rect(480,330,80,40,10,10,10,10);
	fill(204, 222, 255);
	rect(480,295,65,40,10,10,10,10);
	fill(247, 20, 39);
	rect(480,270,5,20);
	rect(460,270,5,20);
	rect(500,270,5,20);
	fill(255, 149, 0);
	ellipse(480,260,7,9);
	ellipse(460,260,7,9);
	ellipse(500,260,7,9);
	fill(252, 244, 0);
	ellipse(480,257,6,8);
	ellipse(460,257,6,8);
	ellipse(500,257,6,8);
	fill(255);
	ellipse(480,254,4,5);
	ellipse(460,254,4,5);
	ellipse(500,254,4,5);
}
void balloons(){
	rectMode(CORNER);
	stroke(0);
	strokeWeight(2);
	line(200,100,168,410);
	line(150,100,168,410);
	noStroke();
	fill(250,0,0);
	triangle(190,100,210,100,200,90);
	ellipse(200,50,80,80);
	fill(255, 140, 0);
	triangle(140,100,160,100,150,90);
	ellipse(150,50,80,80);
}
void mrSimon(){
	rectMode(CORNER);
	//neck
noStroke();
fill(214, 190, 135);
rect(280,355,40,15);
//skin tone(232, 210, 162)
fill(232, 210, 162);
//head
ellipse(300,300,100,100);
ellipse(300,310,85,100);
fill(0);
//eyes
ellipse(280,295,10,10);
ellipse(320,295,10,10);
//glasses
strokeWeight(3);
stroke(0);
noFill();
rect(264,287,30,15,10,10,10,10);
rect(306,287,30,15,10,10,10,10);
rect(294,292,12,3);
//nose
noStroke();
fill(214, 190, 135);
triangle(300,298,293,320,307,320);
ellipse(300,318,12,12);
//facial hair
fill(148, 147, 146);
ellipse(300, 345, 38, 38);
//mouth
fill(209, 121, 154);
//ellipse(295,335,20,5);
//ellipse(305,335,20,5);
stroke(156, 81, 106);
strokeWeight(3);
arc(300,337,25,10,0,PI);
noStroke();
//arms
fill(214, 190, 135);
pushMatrix();
translate(255,365);
rotate(PI/5);
rect(0,50,25,50);
translate(0,100);
rotate(3*PI/5);
rect(-10,0,25,40);
ellipse(2,-10,30,30);
popMatrix();
pushMatrix();
translate(345,365);
rotate(-PI/5);
rect(0,50,-25,50);
translate(0,100);
rotate(-PI/4);
ellipse(-10,-7,25,25);
rect(5,-5,-25,50);
popMatrix();
ellipse(168,410,28,28);
//shirt
fill(65, 124, 176);
rect(255,365,90,120);
pushMatrix();
translate(255,365);
rotate(PI/4);
rect(0,0,40,60);
popMatrix();
pushMatrix();
translate(345,365);
rotate(-PI/4);
rect(0,0,-40,60);
popMatrix();
//shoes
fill(0);
rect(250,608,35,20);
ellipse(250,618,20,20);
rect(265,600,20,10);

rect(250+70,608,35,20);
ellipse(250+70,618,20,20);
rect(265+70,600,20,10);
//pants
fill(79, 60, 43);
rect(257, 485,86,30);
pushMatrix();
translate(257,485);
rotate(PI/25);
rect(0,0,45,120);
popMatrix();
pushMatrix();
translate(343,485);
rotate(-PI/25);
rect(0,0,-45,120);
popMatrix();
//hat
fill(65, 65, 66);
ellipse(300,270,100,30);
ellipse(300,265,90,35);

}
