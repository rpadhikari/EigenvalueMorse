program morse
  implicit none
  integer(4) i, m, n
  real(8) De, a, x, xe, z
  real(8) mass, w0, en
  real(8), external :: potential, energy, linesp, linesn
  real(8), external :: fact, chgf, lnkx, psi 
  real(8) lambda, alpha
  open(1,file='input.dat', action='read') 
  open(2,file='potential.dat', action='write') 
  open(3,file='energy.dat', action='write')
  open(4,file='en.dat', action='write')
  read(1,*) De
  read(1,*) a
  read(1,*) xe
  read(1,*) mass
  read(1,*) n
  read(1,*) m
  close(1)
  w0=dsqrt(2.0d0*a**2*De/mass)
  lambda=dsqrt(2.0d0*mass*De)/a
  write(*,*) w0, lambda
  do i=1, m
    x=dble(i)*0.01
    write(2,10) x, potential(De, a, x, xe)
  end do
  close(2)
  do i=0, n-1
    en=-De+w0*energy(i, lambda)
    write(3,20) dble(i), -De+w0*energy(i, lambda)
    write(4,30) 'set arrow from ',linesp(De, xe, a, en),',',en ,' to ',&
                 linesn(De, xe, a, en),',',en, ' as 1'
!    write(4,30) 'set arrow from ',linesp(De, xe, a, en)
  end do
  close(3)
  close(4)
  10 format(f6.2, f15.5)
  20 format(f6.2, f15.5)
  30 format(a15, f12.8,a2, f12.5, a6, f12.8,a2, f12.5, a6)
!  30 format(a15, f15.8)

end program morse
 
  
  
