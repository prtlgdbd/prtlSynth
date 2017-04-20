void mouseDragged() {
    if (mouseX > 0 && mouseY > 0 && movePanel) {
      activeGroup.setPosition(mouseX,mouseY);
      //activeGroup.setOpen(true);
    }
}

void mousePressed() {
    if (mouseX > 0 && mouseY > 0 && movePanel) {
      activeGroup.setOpen(true);
    }
}


void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {

    } else if (keyCode == DOWN) {

    } 
  }
}

void mouseReleased() {
  movePanel = false;
}