int m, s, h;

void setup(){
  size(900, 900);
  s = 0;
  m = 0;
  h = 19;
}

void draw(){
    s++;
    
    if(s == 60){
        s = 0;
        m++;
    }

    if(m == 60){
        m = 0;
        h++;
    }
    
    if(h == 12){
        h = 0;
    }
  
    translate(width / 2, height / 2);
    background(40);

    stroke(45);
    noFill();
    strokeWeight(5);
    ellipse(0, 0, 600, 600);
        
    noFill();
    strokeWeight(5);
    ellipse(0, 0, 480, 480);
        
    noFill();
    strokeWeight(5);
    ellipse(0, 0, 360, 360);
    
    float seconds = map(s, 0, 60, 0, 360);
    float minutes = map(m, 0, 60, 0, 360);
    float hours = map(h, 0, 12, 0, 360);
  
    stroke(map(s, 0, 60, 50, 255), map(m, 0, 60, 50, 255), map(h, 0, 12, 50, 255));
    strokeWeight(5);
    noFill();
    ellipse(0, 0, 800, 800);

    pushMatrix();
    rotate(radians(seconds));
    stroke(map(s, 0, 60, 50, 255), 0, 0);
    strokeWeight(5);
    line(0, 0, 0, -300);
    popMatrix();
    
    pushMatrix();
    rotate(radians(minutes));
    stroke(0, map(m, 0, 60, 50, 255), 0);
    strokeWeight(5);
    line(0, 0, 0, -240);
    popMatrix();
    
    pushMatrix();
    rotate(radians(hours));
    stroke(0, 0, map(h, 0, 12, 50, 255));
    strokeWeight(5);
    line(0, 0, 0, -180);
    popMatrix();
    
    stroke(map(s, 0, 60, 50, 255), map(m, 0, 60, 50, 255), map(h, 0, 12, 50, 255));
    strokeWeight(10);
    point(0, 0);
    
    delay(20);
}