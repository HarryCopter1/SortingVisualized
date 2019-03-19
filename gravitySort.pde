//Not working as i expected, but still works.
void gravitySort() {
  gravitySort(arr);
}


void gravitySort(int[] array)
{  
  int max = 0;
        for (int anArr : array) {
            if (anArr > max) {
                max = anArr;
            }
        }
        //Set up abacus
        BeadSortStatus[][] grid = new BeadSortStatus[arr.length][max];
        int[] levelcount = new int[max];
        for(int i = 0; i < max; i++) {
            levelcount[i] = 0;
            for(int j = 0; j < arr.length; j++) {
                grid[j][i] = BeadSortStatus.NOT_MARKED;
            }
        }
        //Drop the beads
        for (int anArr : array) {
            int num = anArr;
            for (int j = 0; num > 0; j++, num--) {
                grid[levelcount[j]++][j] = BeadSortStatus.MARKED;
            }
        }
        //Count the beads
      //  int[] arr=new int[array.length];
        for(int i = 0; i < array.length; i++) {
            int putt = 0;
            for(int j = 0; j < max && grid[array.length - 1 - i][j] == BeadSortStatus.MARKED; j++) {
                putt++;
    System.out.println(putt);
      delay(del);
            }
          int temp = array[i];
          array[i] = putt;
          putt=temp;
           // array[i] = putt;
        }
  }
