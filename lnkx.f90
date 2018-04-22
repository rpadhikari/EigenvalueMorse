function lnkx(n, alpha, x)
  implicit none
  real(8) lnkx
  integer(4) n
  real(8) alpha, x, hg
  real(8), intrinsic :: gamma
  call chgm(-dble(n), alpha+1.0d0, x, hg)
  lnkx=gamma(alpha+dble(n)+1.0d0)*hg/(gamma(alpha+1.0d0)*&
       gamma(dble(n)+1.0d0))
end function lnkx

