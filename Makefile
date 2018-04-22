FC=gfortran -c
LD=gfortran
SRC=potential.f90 energy.f90 linesn.f90 linesp.f90 main.f90
OBJ=potential.o energy.o linesn.o linesp.o main.o
energy:
	$(FC) $(SRC)
	$(LD) $(OBJ) -o energy.x
	rm -rf *.o
clean:
	rm -rf *.o *.x *.pdf

