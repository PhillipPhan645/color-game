//color generator
int randomWord  = (int) random(0, 7);
int randomColor = (int) random(0, 7);
float ffs = (float) random(0, 1);


String[] words = {"RED", "ORANGE", "YELLOW", "GREEN", "BLUE", "PINK", "PURPLE"};
color[] colors = {red, orange, yellow, green, blue, pink, purple};
float[] ffsmatch = {0, 1};


//textsize increase
int increase = 1;


//score
int score, highscore = 0;

int match;

int timer = 75;


void game() {
  //match
  background(black);
  textSize(100);
  stroke(white);
  fill(white);
  text("Match", width/4, 200);


  //dont match
  stroke(white);
  fill(white);
  rect(width/2, 0, width/2, height);
  stroke(black);
  fill(black);
  text("Don't", 600, 100);
  text("Match", 600, 200);


  textSize(100 + increase++);
  if (increase > 200) {
    increase = 1;
  }

  fill(colors[randomColor]);
  text(words[randomWord], width/2, height/2);

  //true or false
  if (randomWord == randomColor) {
    match = 1;
  } else {
    match = -1;
  }

  //score
  textSize(25);
  fill(grey);
  text("SCORE: " + score, width/2, 10);

  if (highscore < score) {
    highscore = score;
  }



  //timer
  text("TIMER: "  + timer, width/2, 50);
  timer = timer -1;
  //if (timer < 0) mode = GAMEOVER;
}


void gameClicks() {
  //dont match > 0
  if (mouseX > 400 && mouseX < 800 && mouseY > 0 && mouseY < 801 && match < 0) {
    increase = 1;
    randomwc();
    score++;
  }

  //dont match < 0
  if (mouseX > 400 && mouseX < 800 && mouseY > 0 && mouseY < 801 && match > 0) {
    increase = 1;
    randomwc();
    mode = GAMEOVER;
  }

  //match > 0
  if (mouseX > 0 && mouseX < 400 && mouseY > 0 && mouseY < 801 && match > 0) {
    increase = 1;
    randomwc();
    score++;
  }

  //match < 0
  if (mouseX > 0 && mouseX < 400 && mouseY > 0 && mouseY < 801 && match < 0) {
    increase = 1;
    randomwc();
    mode = GAMEOVER;
  }
}

void gamePressed() {
  if (keyCode == LEFT) leftkey = true;
  if (keyCode == RIGHT) rightkey = true;

  //dont match > 0
  if (rightkey == true  && match < 0) {
    increase = 1;
    randomwc();
    score++;
  }

  //dont match < 0
  if (rightkey == true  && match > 0) {
    increase = 1;
    randomwc();
    mode = GAMEOVER;
  }
}

void gameReleased() {
  if (keyCode == LEFT) leftkey = false;
  if (keyCode == RIGHT) rightkey = false;

  //dont match > 0
  if (rightkey == true  && match < 0) {
    increase = 1;
    randomwc();
    score++;
  }

  //dont match < 0
  if (rightkey == true  && match > 0) {
    increase = 1;
    randomwc();
    mode = GAMEOVER;
  }

  //match > 0
  if (rightkey == true && match > 0) {
    increase = 1;
    randomwc();
    score++;
  }

  //match < 0
  if (rightkey == true && match < 0) {
    increase = 1;
    randomwc();
    mode = GAMEOVER;
  }
}


void randomwc() {
  ffs = (float) random(0, 1);
  if (ffs > 0.5) {
    randomWord  = (int) random(0, 7);
    randomColor  = (int) random(0, 7);
  } else if (ffs < 0.5) {
    while (randomColor != randomWord) {
      randomColor = (int) random(0, 7);
      randomWord  = (int) random(0, 7);
    }
  }
}
