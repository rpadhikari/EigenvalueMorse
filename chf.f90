function chf(a, c, x)
  implicit none
  real(8) chf
  real(8) a, b, x
  real(8) sum
  int n
  sum=0.0d0
  do n=0,20
    sum=sum+gamma(a+dble(n))*gamma(c)*x**n/(gamma(a)*gamma(c+dble(n))&
           *fact(n))
  end do
  chf=sum
end function chf
