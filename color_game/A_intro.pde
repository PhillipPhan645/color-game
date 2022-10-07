void intro() {
  music.play();

  //background
  image(background[f], 0, 0, width, height);
  if (frameCount % 2 == 0) f = f + 1;
  if (f == framecount) f = 0;

  //color theory text
  textSize(1);
  textAlign(CENTER, CENTER);
  textFont(kid);

  pushMatrix();
  counter = counter + 1;
  if (counter > 10) {
    fill(white);
    text("Color", width/2, 100);
    text("Theorry", width/2, 300);
  }
  if (counter == 20) {
    counter = 0;
  }
  popMatrix();

  //start button
  strokeWeight(4);
  stroke(black);
  tactilecircle(675, 675, 100, white);
  strokeWeight(3);
  stroke(black);
  line(630, 675, 675, 675);
  fill(black);
  triangle(675, 650, 675, 700, 700, 675);
}

void introClicks() {
  if (touchcircle(675, 675, 100)) {
    mode = GAME;
  }
}

void introPressed() {
}

void introReleased() {
}
