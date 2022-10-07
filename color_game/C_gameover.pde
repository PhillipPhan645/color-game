void gameover() {
  background(red);
  fill(white);
  textSize(75);
  text("SCORE: " + score, width/2, 15);

  
  counter = counter + 1;
  if (counter > 10) {
    fill(pink);
    text("HIGHSCORE: " + highscore, width/2, 80);
  }
  if (counter == 20) {
    counter = 0;
  }

  //gameover
  textSize(50 + increase++);
  if (increase > 150) {
    increase = 1;
  }
  fill(Bred);
  text("GAMEOVER ):", width/2, 350);

  //start button
  strokeWeight(4);
  stroke(black);
  tactilecircle(675, 675, 100, white);
  strokeWeight(3);
  stroke(black);
  line(630, 675, 675, 675);
  fill(black);
  triangle(675, 650, 675, 700, 700, 675);

  //tryagain
  textSize(50);
  text("Try Again!", width/2, 663);
}
void gameoverClicks() {
  if (touchcircle(675, 675, 100)) {
    mode = INTRO;
    reset();
  }
}

void gameoverPressed() {
}

void gameoverReleased() {
}

void reset() {
  increase = 1;
  timer = 75;
  score = 0;
  music.rewind();
}
