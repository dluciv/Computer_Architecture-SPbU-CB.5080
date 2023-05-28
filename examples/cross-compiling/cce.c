#include <stdio.h>
#define DOUBLE_PI 3.14159265358979323846

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

double ipow(int pow, double base)
{
  double res = 1, tmp = base;
  while(pow)
  {
    if(pow & 1)
      res *= tmp;
    tmp *= tmp;
    pow >>= 1;
  }
  return res;
}

int main()
{
  printf("sizeof(int): %d\n", sizeofint());
  printf("factorial(6): %d.\n", factorial(6));
  printf("Pi^5: %lf\n", ipow(5, DOUBLE_PI));
  return 0;
}
