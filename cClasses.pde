//Listener class to hopefully allow dragging of control groups
class MyControlListener implements ControlListener {
  int col;
  public void controlEvent(ControlEvent theEvent) {
    movePanel = true;
    activeGroup = theEvent.getGroup(); 
  }
}  