/* Generated by CIL v. 1.3.7 */
/* print_CIL_Input is true */

#line 2 "./assert.h"
void __blast_assert(void) 
{ 

  {
  ERROR: 
#line 4
  goto ERROR;
}
}
#line 13 "files/ex3_forlist.c"
void *pp[2]  ;
#line 14 "files/ex3_forlist.c"
int pstate[2]  ;
#line 16 "files/ex3_forlist.c"
void init(void) 
{ int i ;

  {
#line 18
  i = 0;
  {
#line 18
  while (1) {
    while_continue: /* CIL Label */ ;
#line 18
    if (i < 2) {

    } else {
#line 18
      goto while_break;
    }
#line 19
    pp[i] = (void *)0;
#line 20
    pstate[i] = 0;
#line 18
    i = i + 1;
  }
  while_break: /* CIL Label */ ;
  }
#line 22
  return;
}
}
#line 24 "files/ex3_forlist.c"
void f(void *pointer ) 
{ int i ;
  void *__cil_tmp3 ;
  unsigned int __cil_tmp4 ;
  unsigned int __cil_tmp5 ;

  {
#line 26
  i = 0;
  {
#line 26
  while (1) {
    while_continue: /* CIL Label */ ;
#line 26
    if (i < 2) {

    } else {
#line 26
      goto while_break;
    }
    {
#line 27
    __cil_tmp3 = (void *)0;
#line 27
    __cil_tmp4 = (unsigned int )__cil_tmp3;
#line 27
    __cil_tmp5 = (unsigned int )pp[i];
#line 27
    if (__cil_tmp5 == __cil_tmp4) {
#line 28
      pp[i] = pointer;
#line 29
      pstate[i] = 1;
#line 30
      goto while_break;
    } else {

    }
    }
#line 26
    i = i + 1;
  }
  while_break: /* CIL Label */ ;
  }
#line 33
  return;
}
}
#line 35 "files/ex3_forlist.c"
void g(void *pointer ) 
{ int i ;
  unsigned int __cil_tmp3 ;
  unsigned int __cil_tmp4 ;

  {
#line 37
  i = 0;
  {
#line 37
  while (1) {
    while_continue: /* CIL Label */ ;
#line 37
    if (i < 2) {

    } else {
#line 37
      goto while_break;
    }
    {
#line 38
    __cil_tmp3 = (unsigned int )pointer;
#line 38
    __cil_tmp4 = (unsigned int )pp[i];
#line 38
    if (__cil_tmp4 == __cil_tmp3) {
#line 40
      if (pstate[i] == 1) {

      } else {
        {
#line 40
        __blast_assert();
        }
      }
#line 41
      pstate[i] = 2;
    } else {

    }
    }
#line 37
    i = i + 1;
  }
  while_break: /* CIL Label */ ;
  }
#line 44
  return;
}
}
#line 46 "files/ex3_forlist.c"
int counter  =    1;
#line 47 "files/ex3_forlist.c"
void *malloc(int size ) 
{ int tmp ;

  {
#line 48
  tmp = counter;
#line 48
  counter = counter + 1;
#line 48
  return ((void *)tmp);
}
}
#line 52 "files/ex3_forlist.c"
int main(void) 
{ int *a ;
  int *b ;
  void *tmp ;
  void *tmp___0 ;
  int __cil_tmp5 ;
  int __cil_tmp6 ;
  int *__cil_tmp7 ;
  unsigned int __cil_tmp8 ;
  unsigned int __cil_tmp9 ;
  int *__cil_tmp10 ;
  unsigned int __cil_tmp11 ;
  unsigned int __cil_tmp12 ;
  void *__cil_tmp13 ;
  void *__cil_tmp14 ;
  void *__cil_tmp15 ;
  void *__cil_tmp16 ;

  {
  {
#line 55
  init();
#line 56
  __cil_tmp5 = (int )4U;
#line 56
  tmp = malloc(__cil_tmp5);
#line 56
  a = (int *)tmp;
#line 57
  __cil_tmp6 = (int )4U;
#line 57
  tmp___0 = malloc(__cil_tmp6);
#line 57
  b = (int *)tmp___0;
  }
  {
#line 58
  __cil_tmp7 = (int *)0;
#line 58
  __cil_tmp8 = (unsigned int )__cil_tmp7;
#line 58
  __cil_tmp9 = (unsigned int )a;
#line 58
  if (__cil_tmp9 == __cil_tmp8) {
#line 59
    return (-1);
  } else {
    {
#line 58
    __cil_tmp10 = (int *)0;
#line 58
    __cil_tmp11 = (unsigned int )__cil_tmp10;
#line 58
    __cil_tmp12 = (unsigned int )b;
#line 58
    if (__cil_tmp12 == __cil_tmp11) {
#line 59
      return (-1);
    } else {

    }
    }
  }
  }
  {
#line 61
  __cil_tmp13 = (void *)a;
#line 61
  f(__cil_tmp13);
#line 62
  __cil_tmp14 = (void *)b;
#line 62
  f(__cil_tmp14);
#line 63
  __cil_tmp15 = (void *)a;
#line 63
  g(__cil_tmp15);
#line 65
  __cil_tmp16 = (void *)b;
#line 65
  g(__cil_tmp16);
  }
#line 69
  return (0);
}
}