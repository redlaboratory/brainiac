import processing.core.*; 
import processing.xml.*; 

import processing.opengl.*; 
import codeanticode.glgraphics.*; 
import controlP5.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class brainiac extends PApplet {

PrintWriter output;
 



GLModel sphere1;
PFont body;


int k ;

ControlP5 cp5;
Textarea myTextarea;
Textarea myTextarea2;
controlP5.Button b; 
 float n;
  String  block[]= new String[12]; ;
  String[] sa1;
 
 String[] lines;
 public void setup  (){
    // frameRate(30);
   
size(800, 600); 
background(100); 
stroke(255);
noFill();
smooth();
  cp5 = new ControlP5(this);
  pushMatrix(); 
  cp5.addButton("colorA")
     .setValue(0)
     .setPosition(500,00)
     .setSize(200,19)
     ;  
     cp5.addButton("colorB")
     .setValue(0)
     .setPosition(500,20)
     .setSize(200,19)
     ;  popMatrix();
myTextarea = cp5.addTextarea("txt")
                  .setSize(200,28)
                   .setPosition(10,300)
                  .setFont(createFont("arial",12))
                  .setLineHeight(14)
                  .setColor(color(228))
                  .setColorBackground(color(255,100))
                  .setColorForeground(color(255,100));
                  ;
                  
myTextarea2 = cp5.addTextarea("txt2")
                  .setSize(200,300)
                   .setPosition(10,330)
                  .setFont(createFont("arial",12))
                  .setLineHeight(14)
                  .setColor(color(228))
                  .setColorBackground(color(255,100))
                  .setColorForeground(color(255,100));
                  ;
lines = loadStrings("positionsn.txt");
 // Create a new file in the sketch directory
  output = createWriter("pzo.rtf");
  // create a new button with name 'buttonA'

 
  }
  
  
  
public void draw () {

  n += (1-n)* 0.1f; 

String[] thought = { " pomme ", " ours ", " chat ", " chien ", ""  }; 
String[] words = { " je", " tu", " nous", " ils", "on"," pour","pourquoi"  };
String[] words1 = { " donne", " envie ", " avoir ", " echange", " " ," prendre " };
String[] words2 = { " pomme ", " ours ", " chat ", " chien ", " "," rien "  };

String[] words3 = { ".", " . ", "", " ?", " !", " et "  };

String silence = " |||||||||||";
int sens[] = {1,2,3,4,5,6 };


background(100); 

 
 String[] adn = { "a", "t", "g", "h"}; 
int[] gn = {10,10};
 
 fill(100, 250, 153);
text("junior"+" "+gn, 150, 30); 
  fill(0); 
  
 fill(200, 105, 105);
text("coh\u00e9rence"+" "+adn[PApplet.parseInt(random(adn.length))]+adn[PApplet.parseInt(random(adn.length))]+adn[PApplet.parseInt(random(adn.length))]+adn[PApplet.parseInt(random(adn.length))], 350, 30); 
  fill(0);  
 
if (k>10){//triangle(30, 75,k, 20, 86, 75);
output.print("22");
}


rectMode(CENTER);
int brain = PApplet.parseInt(random(words.length));
ellipse(56, 50,10*brain, 10*brain);
fill(10*brain);
rect(156, 50, 35,35);
rect(200, 50, 35,35);
rect(250, 50, 35,35);
rect(300, 50, 35,35);
rect(350, 50, 35,35);
rect(400, 50, 35,35);
rect(450, 50, 35,35);


int brain1 = PApplet.parseInt(random(words1.length));
ellipse(56, 110,10*brain1, 10*brain1);
fill(10*brain1);
rect(156, 100, 35,35);
rect(200, 100, 35,35);
rect(250, 100, 35,35);
rect(300, 100, 35,35);
rect(350, 100, 35,35);
rect(400, 100, 35,35);
rect(450, 100, 35,35);

int brain2 = PApplet.parseInt(random(words2.length));
ellipse(56, 170,10*brain2, 10*brain2);
fill(10*brain2 );
rect(156, 150, 35,35);
rect(200, 150, 35,35);
rect(250, 150, 35,35);
rect(300, 150, 35,35);
rect(350, 150, 35,35);
rect(400, 150, 35,35);
rect(450, 150, 35,35);

int brain3 = PApplet.parseInt(random(words3.length));
ellipse(56,230,10*brain3, 10*brain3);
fill(10*brain3);
rect(156, 200, 35,35);
rect(200, 200, 35,35);
rect(250, 200, 35,35);
rect(300, 200, 35,35);
rect(350, 200, 35,35);
rect(400, 200, 35,35);
rect(450, 200, 35,35);
//rect(156, 300, 35,35);
//rect(200, 300, 35,35);

pushMatrix(); 
noFill(); 

translate(530, 120); rectMode(CENTER);
quad(50*brain,50*brain1, 50*brain2, 50*brain3,50*brain3,50*brain2, 10*brain1, 10*brain);
quad(10*brain,10*brain1, 10*brain2, 10*brain3,10*brain3,10*brain2, 10*brain1, 10*brain);

popMatrix(); 

int[] neuronex = {156, 200,250, 300,350,400,450,500  };
//int[] neuroney = {50,100,150,200 };

/*
pushMatrix(); 
int index = brain;  // same as int(random(4))
println(words[index]);
 index = brain1;  // same as int(random(4))
println(words1[index]);
index = brain2;  // same as int(random(4))
println(words2[index]);
index =  brain3;  // same as int(random(4))
println(words3[index]);

noFill();
beginShape();
vertex(neuronex[brain],50);
vertex(neuronex[brain1], 100);
vertex(neuronex[brain2], 150);
vertex(neuronex[brain3],200);
endShape();

popMatrix(); */
pushMatrix(); 
translate(130, 120);
fill(35*brain1, 35*brain2, 35*brain3);
rect(156, 200, 35,35);
fill(50*brain1, 50*brain2, 50*brain3);
rect(200, 200, 35,35);

fill(10*brain1, 10*brain2, 10*brain3);
rect(250, 200, 35,35);
fill(10*brain1, 10*brain2, 10*brain3);
rect(300, 200, 35,35);
popMatrix();
//?
//fill(10*brain);

//?
 pushMatrix(); 
 
int a=0;int b=0 ;int c=0 ;int d=0 ;
//text("lines", 200, 20 ,200,20);
for (int e= 0; e<10; e = e+1) {
  block[e] = (words[brain]+words1[brain1]+words2[brain2]+words3[brain3]);
println(block);
println(block[11]);

myTextarea2.setText (block[4]);
}
for (int j = 0; j <1; j = k+1) {
for (int i = 0; i < 1; i = k+1) { 
  myTextarea.setText(words[brain]+words1[brain1]+words2[brain2]+words3[brain3]);

 

  //
  
 
text("The value of variable c is " +i, 0, 0); 
int talk[] = {2}; 
int[] talk1 = {2}; 
int[] talk2 = {2}; 
int[] talk3 = {2}; 


popMatrix();

//index = int(random(words.length));  // same as int(random(4))
int[]numbers=new int[ 3];
 //FIRST
 //LAST

output.print(block);
output.print(words[brain]);


//index = int(random(words1.length));  // same as int(random(4))
output.print(words1[brain1]);
//index = int(random(words2.length));  // same as int(random(4))
output.print(words2[brain2]);
//myTextarea.setText(words1[index]);
//index = int(random(words3.length));  // same as int(random(4))
output.print(words3[brain3]);
}
output.print(silence);

}
 output.flush(); // Writes the remaining data to the file
 // output.close(); // Finishes the file}
delay(300);



//noLoop(); redraw();

}





public void keyPressed() {
 
 // output.flush(); // Writes the remaining data to the file
  output.close(); // Finishes the file
  exit(); // Stops the program
}


int tr = 0;  

public void mousePressed() {
  if (mouseButton == LEFT) {
   noLoop();
  } else if (mouseButton == RIGHT) {
  k++;
loop();
tr=2;
  k++;
  } else {
  noLoop();
  }}


  static public void main(String args[]) {
    PApplet.main(new String[] { "--present", "--bgcolor=#666666", "--stop-color=#cccccc", "brainiac" });
  }
}
