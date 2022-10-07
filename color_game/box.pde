void keyPressed() {
  if (mode == INTRO) {
    introPressed();
  } else if (mode == GAME) {
    gamePressed();
  } else if (mode == GAMEOVER) {
    gameoverPressed();
  }
}

void keyReleased() {
  if (mode == INTRO) {
    introReleased();
  } else if (mode == GAME) {
    gameReleased();
  } else if (mode == GAMEOVER) {
    gameoverReleased();
  }
}

void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  }
}
