function linesp(De, xe, a, energy)
implicit none
  real(8) linesp
  real(8) De, xe, a, energy
  linesp=xe-1.0d0/a*log(1.0d0+dsqrt(1.0d0+energy/De))
end function linesp
  
