
void bubbleSort() {
  bubbleSort(arr);
}




void bubbleSort(int[] arr)
{
  int temp;
  for(int i = 0;i<arr.length;i++)
  {    
  for(int j = 0;j<arr.length-1;j++)
  {
    if(arr[j]>arr[j+1])
    {
      temp = arr[j];
      arr[j] = arr[j+1];
      arr[j+1] = temp;
      delay(del);
    }
  }
  }

}
