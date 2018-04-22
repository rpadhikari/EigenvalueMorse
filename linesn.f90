function linesn(De, xe, a, energy)
implicit none
  real(8) linesn
  real(8) De, xe, a, energy
  linesn=xe-1.0d0/a*log(1.0d0-dsqrt(1.0d0+energy/De))
end function linesn
  
