function fact(n)
  implicit none
  int i, n
  real(8) fact, prod
  prod =0.0d0
  do i=1,n
    prod = prod*dble(i)
  end do
end function fact

