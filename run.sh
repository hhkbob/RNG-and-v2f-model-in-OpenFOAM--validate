#!/bin/sh
decomposePar

mpirun -np 4 buoyantBoussinesqSimpleFoam -parallel

reconstructPar

buoyantBoussinesqSimpleFoam -postProcess -func wallShearStress

./Nu

postProcess -func sets

postProcess -func surfaces

