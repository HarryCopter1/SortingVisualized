import java.util.Random;

//globle variables
int[] arr;
int len; //Length on array
int del = 30; //Delay. Less - faster.

float c; //For epilepsy mode

void setup() {
  fullScreen();
  //size(800,600);
  background(0);
  //initialize the len, size
  len = 50;
  
  colorMode(HSB);

  arr = generateArray();
  
  //CONTROLS IS HERE//
  
    thread("quickSort"); 
 // thread("bubbleSort");
 // thread("cocktailSort");
 // thread("gravitySort");
 // thread("bogoSort");
}


void draw() {
  //background(random(0,255), random(0,255), random(0,255)); For epilepsy mode
  
  // update background
  background(255);
  drawRect(arr);
}

int[] generateArray() {
  
  int step = height/len; 
  
  int original[] = new int[len];  
  
  
  for(int i=0; i<original.length;i++)
  {  
  original[i]+=step*i;  
  }    

    // Shuffles array

    Random rgen = new Random();       
  
    for (int i=0; i<original.length; i++) {
        int randomPosition = rgen.nextInt(original.length);
        int temp = original[i];
        original[i] = original[randomPosition];
        original[randomPosition] = temp;
    }   

    //
    
    return original;
}


//procedure for drawing rectangles to visulize the current array
void drawRect(int[] arr) {
  
  for (int i=0;i!=len;++i) {
    
  /*if (c >= 255)  c=0;  else  c++;
  Run through rainbow colors, epilepsy warning
  Not working as intended, but fun to watch
  fill(c, 255, 255);*/
  
  fill(0, 255, 255); //In HSB mode, change only first value
    // draw rectangles
    rect(i*width/len, height-arr[i], width/len, arr[i]);
  }
}
