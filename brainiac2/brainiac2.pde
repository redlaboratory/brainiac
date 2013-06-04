 PrintWriter output;
 
import processing.opengl.*;
import codeanticode.glgraphics.*;

boolean az = false;


GLModel sphere1;
PFont body;
import controlP5.*;

ControlP5 cp5;
Textarea myTextarea;

controlP5.Button b; 
 
 String[] lines;
 void setup  (){
    // frameRate(30);
size(800, 600); 
background(0); 
stroke(255);
noFill();
smooth();
  cp5 = new ControlP5(this);
myTextarea = cp5.addTextarea("txt")
                  .setSize(200,200)
                   .setPosition(-200,40)
                  .setFont(createFont("arial",12))
                  .setLineHeight(14)
                  .setColor(color(250))
                  .setColorBackground(color(255,100))
                  .setColorForeground(color(255,100));
                  ;
lines = loadStrings("positionsn.txt");
 // Create a new file in the sketch directory
 output = createWriter("passé.txt"); 
output = createWriter("future.txt");  
  output = createWriter("positionsn.rtf"); }
void draw () {

 background(0);   // Set the background to black  
 

 
 
 String[] adn = { "a", "t", "g", "h"}; 
int[] gn = {10,10};
 
 fill(100, 250, 153);
text("junior"+" "+gn, 150, 30); 
  fill(0); 
  
 fill(200, 105, 105);
text("cohérence"+" "+adn[int(random(adn.length))]+adn[int(random(adn.length))]+adn[int(random(adn.length))]+adn[int(random(adn.length))], 350, 30); 
  fill(0);  
 
String[] thought = { " pomme ", " ours ", " chat ", " chien ", ""  }; 
String[] words = { " je", " tu", " nous", " ils", "on"," pour","pourqhoi"  };
String[] words1 = { " donne", " envie ", " avoir ", " echange", " " ," prendre " };
String[] words2 = { " pomme ", " ours ", " chat ", " chien ", " "," rien "  };

String[] words3 = { ".", " . ", "@", " ?", " !", " et "  };

String silence = " ||||||||||||||||||||||||||||||||||||||||||||||";
int sens[] = {1,2,3,4,5,6 };




rectMode(CENTER);
int brain = int(random(words.length));
ellipse(56, 50,10*brain, 10*brain);
fill(10*brain);
rect(156, 50, 35,35);
rect(200, 50, 35,35);
rect(250, 50, 35,35);
rect(300, 50, 35,35);
rect(350, 50, 35,35);
rect(400, 50, 35,35);
rect(450, 50, 35,35);


int brain1 = int(random(words1.length));
ellipse(56, 110,10*brain1, 10*brain1);
fill(10*brain1);
rect(156, 100, 35,35);
rect(200, 100, 35,35);
rect(250, 100, 35,35);
rect(300, 100, 35,35);
rect(350, 100, 35,35);
rect(400, 100, 35,35);
rect(450, 100, 35,35);

int brain2 = int(random(words2.length));
ellipse(56, 170,10*brain2, 10*brain2);
fill(10*brain2 );
rect(156, 150, 35,35);
rect(200, 150, 35,35);
rect(250, 150, 35,35);
rect(300, 150, 35,35);
rect(350, 150, 35,35);
rect(400, 150, 35,35);
rect(450, 150, 35,35);
int brain3 = int(random(words3.length));
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

noFill();  

int[] neuronex = {156, 200,250, 300,350,400,450,500  };
//int[] neuroney = {50,100,150,200 };



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




translate(130, 120);
fill(35*brain1, 35*brain2, 35*brain3);
rect(156, 200, 35,35);
fill(50*brain1, 50*brain2, 50*brain3);
rect(200, 200, 35,35);

fill(10*brain1, 10*brain2, 10*brain3);
rect(250, 200, 35,35);
fill(10*brain1, 10*brain2, 10*brain3);
rect(300, 200, 35,35);
//?
fill(10*brain);

//?
/*
if ( az=true){   tput.print(silence);
    output.print(brain);
    output.print(brain1);
    output.print(brain2);
    output.print(brain3);
    output.print(silence);}*/

int a=0;int b=0 ;int c=0 ;int d=0 ;




for (int j = 0; j <1; j = j+1) {
for (int i = 0; i < 1; i = i+1) { 
//index = int(random(words.length));  // same as int(random(4))
index =  brain;
output.print(words[index]);
//index = int(random(words1.length));  // same as int(random(4))
index =  brain1;
output.print(words1[index);
//index = int(random(words2.length));  // same as int(random(4))
index =  brain2;
output.print(words2[index]);
//myTextarea.setText(words1[index]);
//index = int(random(words3.length));  // same as int(random(4))
index =  brain3;
output.print(words3[index]);
myTextarea.setText(words[brain]+words1[brain1]+words2[brain2]+words3[brain3]);
}
output.print(silence);

}
  output.flush(); // Writes the remaining data to the file
  output.close(); // Finishes the file}
delay(100);
translate(130, 120);
  

quad(10*brain,10*brain1, 10*brain2, 10*brain3,10*brain3,10*brain2, 10*brain1, 10*brain);
 //noLoop(); redraw();
 rectMode(CORNER);
 rect(-200, 40,200, 200);
}
void keyPressed() {
  output.flush(); // Writes the remaining data to the file
  output.close(); // Finishes the file
  exit(); // Stops the program
}void mousePressed() {
  if (mouseButton == LEFT) {
   noLoop();
  } else if (mouseButton == RIGHT) {

redraw();
az=true;
az=false;
  } else {
  noLoop();
  }}
