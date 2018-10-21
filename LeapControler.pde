import de.voidplus.leapmotion.*;

LeapMotion leap;
ArrayList<PVector> oldPos;
PVector lastPos;
PVector currentPos;
boolean init;

void changeHandCursor(){
  if (leap.countHands() == 0 && leap.countHands() != 1){
    init = true;
  }else if(leap.countHands() == 1){
    Hand hand = leap.getHands().get(0);
    if (hand.getOutstretchedFingers().size() == 0){
      cursorId = 0;
      currentPos = hand.getStabilizedPalmPosition();
    } else if(hand.getOutstretchedFingers().size() == 1){
      Finger finger = hand.getFinger(0);
      //if (finger.getType() == 1){
        cursorId = -1;
        //currentPos = finger.getPositionOfJointTip();
        currentPos = hand.getStabilizedPalmPosition();
      //}
    } else if(hand.getOutstretchedFingers().size() > 1 && menuOpen == false){
      cursorId = 1;
      currentPos = hand.getStabilizedPalmPosition();
    }
    print(hand.getOutstretchedFingers().size());
  }
}
