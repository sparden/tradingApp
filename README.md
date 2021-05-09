# tradingapp

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# Assignment PArt2

#include<stdio.h>
void main()
{
  int num, i=0, x, d;
  char * word_no [2000];
  printf ("Enter an integer value: \n");
  scanf ("%d", &num);
  while (num)
  {
    d = num %10;
    num = num /10;
    switch(d)
    {
      case 0: word_no[i++] = "zero";
      break;
      case 1: word_no[i++] = "one"; 
      break;
      case 2: word_no[i++] = "two"; 
      break;
      case 3: word_no[i++] = "three"; 
      break;
      case 4: word_no [i++] = "four"; 
      break;
      case 5: word_no [i++] = "five"; 
      break;
      case 6: word_no [i++] = "six"; 
      break;
      case 7: word_no [i++] = "seven"; 
      break;
      case 8: word_no [i++] = "eight"; 
      break;
      case 9: word_no[i++] = "nine"; 
      break;
    }
  }
  for(x=i-1; x>=0; x--){
  printf ("%s ",word_no[x]);
  }
}
