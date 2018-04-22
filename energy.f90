function energy(n,lambda)
  implicit none
  real(8) energy, lambda
  integer(4) n
  energy=dble(n)+0.50d0-0.50d0*(dble(n)+0.50d0)**2/lambda
end function energy

   
