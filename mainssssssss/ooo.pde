boolean circ_box_collide(PVector circ, float rad, PVector box, PVector dim) {
  // Find the closest point inside the rectangle, to the circle
  float closestX = clamp(circ.x, box.x, box.x + dim.x);
  float closestY = clamp(circ.y, box.y, box.y + dim.y);
  
  ellipse(closestX, closestY, 5, 5);
  
  // Find the distance between the circles center and this closest point
  float distanceX = circ.x - closestX;
  float distanceY = circ.y - closestY;
  
  line(closestX, closestY, circ.x, circ.y);
  
  // If this distance is less than the circles radius, the circle and box overlap
  float distanceSquared = (distanceX * distanceX) + (distanceY * distanceY);  // Note that we use distance squared
  return distanceSquared < (rad * rad);                                       // this saves on computational time.
}

float clamp(float value, float min, float max) {
  value = value > max ? max : value;
  value = value < min ? min : value;
  return value;  
}
