class Asteroid{
   PVector pos;
   PVector dim;
   
   PVector spd;
   int life;
   boolean safe;

   PImage img;
   
   Asteroid() {
     //img = loadImage("asteroid2.png");
     //img.resize(50,50);
     pos = new PVector(random(width), random(height));
     dim = new PVector(random(50), random(50));
     spd = new PVector(random(-5, 5), random(-5, 5));
     life = int(random(3,5));
     safe = false;
   }
   
   void draw() {    
     fill(0, 0, 100, life * 50);
     rect(pos.x, pos.y, dim.x, dim.y);
     //image(img, pos.x, pos.y);
   }
   
   void update() {
     pos.add(spd);
     
     pos.add(width,height);
     pos.x %= width;
     pos.y %= height;
     
     if (life <= 0)
       kill();
   }
   
   boolean collide(PVector circle, float radius) {
     boolean collided = circ_box_collide(circle, radius, pos, dim);
     if (!safe && collided) {
       life--;
       safe = true;
     }
     if (safe && !collided) {
       safe = false;
     }
     return collided;
   }
   
   void kill() {
     pos.set(-1000, 1000);
     spd.set(0,0);
   }
}  
