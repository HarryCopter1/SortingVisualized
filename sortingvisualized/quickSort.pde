
void quickSort() {
  quickSort(arr, 0, len-1);
}

// quick sort procedure
void quickSort(int[] arr, int left, int right) {
  //find partition index
  int  index = partition(arr, left, right);
  //quicksort the array from left to index-1
  if (left < index - 1) {
    quickSort(arr, left, index - 1);
  }
  //quicksort the array from index to right
  if (index < right) {
    quickSort(arr, index, right);
  }
}

int partition(int[] arr, int left, int right)
{
  int i = left, j = right;
  int tmp;
  int pivot = arr[(left + right) / 2];
  //adjust the array from left to right by pivot
  while (i <= j) {
    //find the first value >= pivot in the left
    while (arr[i] < pivot)
      i++;
    //find the first value <= pivot in the right
    while (arr[j] > pivot)
      j--;
    //swap the value
    if (i <= j) {
      tmp = arr[i];
      arr[i] = arr[j];
      arr[j] = tmp;
      i++;
      j--;
      delay(del);
    }
  };

  return i;
}
