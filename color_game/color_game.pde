import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer failure, music, success;


//color palette
color red    = #FFADAD;
color orange = #FFD6A5;
color yellow = #FDFFB6;
color green  = #CAFFBF;
color blue   = #A0C4FF;
color purple = #BDB2FF;
color white  = #FFFFFC;
color black  = #000000;
color pink   = #FFC6FF;
color brown  = #cb997e;
color grey   = #C0C0C0;
color Bred   = #EE4B2B;
color Dblue  = #050A30;
color cyan   = #E0FFFF;
color beige  = #F5F5DC;

int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;

//background gif
PImage[] background;
int framecount;
int f = 0;

//font
PFont kid;

int counter;

//keyboard
boolean leftkey, rightkey;

void setup() {
  size(800, 800);
  mode = INTRO;

  //backgrround gif
  framecount = 36;
  background = new PImage[framecount];
  int i = 0;
  while (i<framecount) {
    background[i]= loadImage("frame_"+i+"_delay-0.01s.gif");
    i++;
  }

  //font
  kid = createFont("New Kids.otf", 200);

  //keyboard
  leftkey = rightkey = false;

  //minim
  minim = new Minim(this);
  success = minim.loadFile("score.wav");
  failure = minim.loadFile("gameover.wav");
  music = minim.loadFile("MUSIC.mp3");
}


void draw() {
  println(mouseX + "," + mouseY);
  if (mode ==INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}

boolean touchcircle(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY)< r/2) {
    return true;
  } else {
    return false;
  }
}

void tactilecircle(int x, int y, int r, int f) {
  fill(f);
  if (touchcircle(x, y, r)) {
    stroke(green);
  } else {
    stroke(black);
  }
  circle(x, y, r);
}
