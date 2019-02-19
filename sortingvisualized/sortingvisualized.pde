import java.util.Random;

//globle varibles
int[] arr;
int len;
int size;
int left;
int right;
int del = 30; //Delay. Less - faster.

void setup() {
  fullScreen();
  background(120);
  //initialize the len, size
  len = 99;
  size = 99;

  arr = generateRandomArray();
  
  //CONTROL IS HERE//
  
  thread("quickSort");
 // thread("bubbleSort");
//  thread("cocktailSort");
 // thread("gravitySort");
 // thread("bogoSort");
}

void draw() {
  // update background
  background(255);
  drawRect(arr);
}

int[] generateRandomArray() {
  
  int original[] = new int[len];  
  for(int i=0; i<original.length;i++){
  //  original[i] = int(random(0,100));
original[i] = i;
}    
    Random rgen = new Random();      
    
  
    for (int i=0; i<original.length; i++) {
        int randomPosition = rgen.nextInt(original.length);
        int temp = original[i];
        original[i] = original[randomPosition];
        original[randomPosition] = temp;
    }    
    return original;
}


//procedure for drawing rectangles to visulize the current array
void drawRect(int[] arr) {
  
  for (int i=0;i!=len;++i) {
    // fill the rectangles in red
    fill(0, 200, 100);
    // draw rectangles
    rect(i*width/len, height-arr[i]*5, width/len, arr[i]*5);
  }
}
