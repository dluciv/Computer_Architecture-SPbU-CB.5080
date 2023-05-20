// #include <stdio.h>

int sizeofint()
{
  return sizeof(int);
}

int factorial(int n)
{
  int r = 1;
  while(n > 1)
    r *= n--;
  return r;
}

/*
int main()
{
  printf("%d\n", factorial(6));
  return 0;
}
*/
