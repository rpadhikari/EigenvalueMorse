function potential(De, a, x, xe)
  implicit none
  real(8) potential
  real(8) De, a, xe, x
  potential = De*(exp(-2.0d0*a*(x-xe))-2.0d0*exp(-a*(x-xe)))
end function potential

!function potential(lambda, x, xe)
!  implicit none
!  real(8) potential
!  real(8) lambda, x, xe
!  potential = lambda**2*(exp(-2.0d0*(x-xe))-2.0d0*exp(-(x-xe)))
!end function potential
