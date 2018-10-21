void changeCursor() {
  if (mousePressed) {
    if (mouseButton == LEFT && menuOpen == false) {
      cursorId = 1;
    } else if (mouseButton == RIGHT) {
      cursorId = -1;
    }
  } else {
    cursorId = 0;
  }
}
