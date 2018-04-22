function psi(n,lambda, z)
  real(8) psi
  integer(4) i
  integer(4) n
  real(8) Nn, lambda, alpha, z
  alpha=2.0d0*(lambda-dble(n))-1.0d0
  Nn=dsqrt(fact(n)*alpha/gamma(2.0d0*lambda-dble(n)))
  psi=Nn*z**(alpha*0.50d0)*exp(-z*0.50d0)*lnkx(n,alpha,z)
end function psi

