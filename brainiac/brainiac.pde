PrintWriter output;
 
import processing.opengl.*;
import codeanticode.glgraphics.*;

GLModel sphere1;
PFont body;
import controlP5.*;

int k ;

ControlP5 cp5;
Textarea myTextarea;
Textarea myTextarea2;
Textarea myTextarea3;
controlP5.Button b; 
 float n;
 public String  block[]= new String[12]; ;
  String[] sa1;
 
 String[] lines;// Variable to store text currently being typed
String typing = "";
// Variable to store saved text when return is hit
String saved = "bbb";
String pile = "bbb";


 void setup  (){
    // frameRate(30);
  int indent = 25;

  // Set the font and fill for text

  fill(0);
  

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
                  
                  
myTextarea3 = cp5.addTextarea("txt3")
                  .setSize(200,300)
                   .setPosition(210,330)
                  .setFont(createFont("arial",12))
                  .setLineHeight(14)
                  .setColor(color(228))
                  .setColorBackground(color(255,100))
                  .setColorForeground(color(255,100));
                  ;
lines = loadStrings("positionsn.txt");
  //Create a new file in the sketch directory
  output = createWriter("pzo.rtf");
  // create a new button with name 'buttonA'

 
  }
  
  
  
void draw () {
 
  n += (1-n)* 0.1; 

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
  fill(0);int indent = 20; 
   // Display everything
  text("Click in this applet and type. \nHit return to save what you typed. ", indent+120, 250);
 
  
  
 fill(200, 105, 105);
text("cohérence"+" "+adn[int(random(adn.length))]+adn[int(random(adn.length))]+adn[int(random(adn.length))]+adn[int(random(adn.length))], 350, 30); 
  fill(0);  
 
if (k>10){//triangle(30, 75,k, 20, 86, 75);
output.print("22");
}


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

pushMatrix(); 
noFill(); 

translate(530, 120); rectMode(CENTER);
quad(50*brain,50*brain1, 50*brain2, 50*brain3,50*brain3,50*brain2, 10*brain1, 10*brain);
quad(10*brain,10*brain1, 10*brain2, 10*brain3,10*brain3,10*brain2, 10*brain1, 10*brain);

popMatrix(); 

int[] neuronex = {156, 200,250, 300,350,400,450,500  };

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
 
//text("lines", 200, 20 ,200,20);

  block[1] = (words[brain]+words1[brain1]+words2[brain2]+words3[brain3]);



myTextarea2.setText (saved );
myTextarea3.setText (saved );

for (int j = 0; j <1; j = k+1) {
for (int i = 0; i < 1; i = k+1) { 
  myTextarea.setText(words[brain]+words1[brain1]+words2[brain2]+words3[brain3]);
println(block[1]);
//int[][] myArray = { {0,1,2,3}, {3,2,1,0}, {3,5,6,1}, {3,8,3,4} };
  //
  
/* 
text("The value of variable c is " +i, 0, 0); 
int talk[] = {2}; 
int[] talk1 = {2}; 
int[] talk2 = {2}; 
int[] talk3 = {2}; 

*/
popMatrix();

//index = int(random(words.length));  // same as int(random(4))
int[]numbers=new int[ 3];



//output.print(words[brain]);

/*
//index = int(random(words1.length));  // same as int(random(4))
output.print(words1[brain1]);
//index = int(random(words2.length));  // same as int(random(4))
output.print(words2[brain2]);
//myTextarea.setText(words1[index]);
//index = int(random(words3.length));  // same as int(random(4))
output.print(words3[brain3]);*/
}
output.print(silence);

}
 output.flush(); // Writes the remaining data to the file
 output.close(); // Finishes the file}
//delay(800);



//noLoop(); redraw();

}




/*
void keyPressed() {
 
 // output.flush(); // Writes the remaining data to the file
  output.close(); // Finishes the file
  exit(); // Stops the program
}

*/void keyPressed() {
  // If the return key is pressed, save the String and clear it
  if (key == '\n' ) {
    saved = block[1] ;
    // A String can be cleared by setting it equal to ""
    //typing = "";
   
  } else {
    // Otherwise, concatenate the String
    // Each character typed by the user is added to the end of the String variable.
    typing = block[1] +saved +key;  output.print( saved);output.flush();
  }
}
int tr = 0;  

void mousePressed() {
  if (mouseButton == LEFT) {
   noLoop();
  } else if (mouseButton == RIGHT) {
  k++;  pile = block[1];
  saved=saved+pile ;
loop();
tr=2;
  k++;
  } else {
  noLoop();
  }}


