
void bogoSort() {
  bogoSort(arr);
}


void bogoSort(int[] i) {
    int counter = 0;
    System.out.println("I'll sort " + i.length + " elements...");
    while(!isSorted(i)) {
      shuffle(i);
      counter++;
    }
    System.out.println("Solution found! (shuffled " + counter + " times)");
    print(i);
}


private void shuffle(int[] i) {
    for(int x = 0; x < i.length; ++x) {
      int index1 = (int) (Math.random() * i.length),
        index2 = (int) (Math.random() * i.length);
      int a = i[index1];
      i[index1] = i[index2];
      i[index2] = a;
    //  delay(del);
    }
  }

  private boolean isSorted(int[] i) {
    for(int x = 0; x < i.length - 1; ++x) {
      if(i[x] > i[x+1]) {
        return false;
      }
    }
    return true;
  }
