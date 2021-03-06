######################################################################
#                                                                    #
#  SEISMIC UN*X PARA LA ENSEÑANZA DEL MÉTODO DE REFLEXIÓN SÍSMICA    #
#                Capítulo 3: Modelamiento sísmico 2D                 #
#  En este script se construye el modelo de velocidades triangulado  #
#  para la cuenca de Guajira Costa Afuera con trimodel               #
#                                                                    #
######################################################################

#! /bin/sh
set -x

# Parametros de entrada
name=Guajira_Trimodel
modfile=$name.dat
psfile=$name.eps

rm -f $psfile $modfile

trimodel xmin=0 xmax=10 zmin=0 zmax=4 \
1  xedge=0,10 \
   zedge=0,00 \
   sedge=0,00 \
2  xedge=0.0,10.0 \
   zedge=0.1,0.30 \
   sedge=0.0,0.00 \
3  xedge=0.00,0.50,1.00,1.50,1.80,3.33,4.00,5.00,5.10,5.26,5.30,5.40,5.50,6.05,6.78,8.318 \
   zedge=1.45,1.38,1.37,1.37,1.36,1.38,1.20,0.98,0.97,0.96,0.96,0.97,0.98,1.00,1.06,1.000 \
   sedge=0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.000 \
4  xedge=8.34,9.00,10.0 \
   zedge=1.06,1.22,1.25 \
   sedge=0.00,0.00,0.00 \
5  xedge=0.00,0.40,0.50,0.90,1.00,1.50,1.80,3.33,4.00,5.00,5.10,5.26,5.30,5.40,5.50,6.05,6.78,7.32,8.51 \
   zedge=2.09,2.10,2.11,2.30,2.30,2.28,2.27,1.80,1.52,1.32,1.30,1.28,1.28,1.29,1.30,1.32,1.33,1.32,1.30 \
   sedge=0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00 \
6  xedge=8.53,9.00,10.0 \
   zedge=1.36,1.46,1.50 \
   sedge=0.00,0.00,0.00 \
7  xedge=0.00,0.20,0.43 \
   zedge=2.29,2.29,2.35 \
   sedge=0.00,0.00,0.00 \
8  xedge=0.44,0.90,1.80,3.33,4.00,5.00,5.10,5.26,5.30,5.67 \
   zedge=2.45,2.63,2.47,1.98,1.70,1.47,1.47,1.48,1.49,1.50 \
   sedge=0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00 \
9  xedge=5.69,6.37,6.69,8.15,8.63 \
   zedge=1.54,1.54,1.56,1.44,1.44 \
   sedge=0.00,0.00,0.00,0.00,0.00 \
10 xedge=8.68,9.00,10.0 \
   zedge=1.52,1.62,1.66 \
   sedge=0.00,0.00,0.00 \
11 xedge=0.00,0.20,0.45 \
   zedge=2.43,2.43,2.49 \
   sedge=0.00,0.00,0.00 \
12 xedge=0.46,0.83,1.11 \
   zedge=2.80,3.00,3.10 \
   sedge=0.00,0.00,0.00 \
13 xedge=1.13,1.25,1.80,1.85,1.90,2.60 \
   zedge=2.96,2.90,2.72,2.70,2.69,2.40 \
   sedge=0.00,0.00,0.00,0.00,0.00,0.00 \
14 xedge=2.62,4.35 \
   zedge=2.42,1.67 \
   sedge=0.00,0.00 \
15 xedge=4.37,4.93,5.26 \
   zedge=1.70,1.52,1.52 \
   sedge=0.00,0.00,0.00 \
16 xedge=5.32,5.71 \
   zedge=1.67,1.67 \
   sedge=0.00,0.00 \
17 xedge=5.74,6.20,6.50,7.40 \
   zedge=1.80,1.73,1.79,1.70 \
   sedge=0.00,0.00,0.00,0.00 \
18 xedge=7.43,7.73,8.40,8.50,8.67 \
   zedge=1.72,1.60,1.58,1.55,1.51 \
   sedge=0.00,0.00,0.00,0.00,0.00 \
19 xedge=8.97,10.0 \
   zedge=1.85,1.86 \
   sedge=0.00,0.00 \
20 xedge=0.65,0.80,1.10 \
   zedge=3.20,3.23,3.17 \
   sedge=0.00,0.00,0.00 \
21 xedge=1.11,2.64 \
   zedge=3.10,2.50 \
   sedge=0.00,0.00 \
22 xedge=2.65,3.00 \
   zedge=2.52,2.4 \
   sedge=0.00,0.00 \
23 xedge=2.65,3.00 \
   zedge=2.52,2.40 \
   sedge=0.00,0.00 \
24 xedge=3.02,4.42 \
   zedge=2.42,1.83 \
   sedge=0.00,0.00 \
25 xedge=4.45,4.80,5.00,5.30 \
   zedge=1.87,1.64,1.62,1.60 \
   sedge=0.00,0.00,0.00,0.00 \
26 xedge=5.34,5.72 \
   zedge=1.75,1.75 \
   sedge=0.00,0.00 \
26 xedge=5.76,6.20,6.50,7.44 \
   zedge=1.92,1.80,1.85,1.80 \
   sedge=0.00,0.00,0.00,0.00 \
26 xedge=7.47,7.73,8.40,8.50,8.80 \
   zedge=1.87,1.67,1.65,1.62,1.65 \
   sedge=0.00,0.00,0.00,0.00,0.00 \
27 xedge=9.00,10.0 \
   zedge=1.90,1.92 \
   sedge=0.00,0.00 \
27 xedge=0,10.0 \
   zedge=4,4.00 \
   sedge=0,0.00 \
28 xedge=8.318,8.34,8.51,8.53,8.63,8.67,8.68,8.78,8.80,8.97,9.00 \
   zedge=1.000,1.06,1.30,1.36,1.44,1.51,1.52,1.60,1.65,1.85,1.90 \
   sedge=0.000,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00 \
29 xedge=0.43,0.44,0.45,0.46,0.65 \
   zedge=2.35,2.45,2.49,2.80,3.20 \
   sedge=0.00,0.00,0.00,0.00,0.00 \
30 xedge=5.67,5.69,5.71,5.72,5.74,5.76 \
   zedge=1.50,1.54,1.67,1.75,1.80,1.92 \
   sedge=0.00,0.00,0.00,0.00,0.00,0.00 \
31 xedge=1.10,1.11,1.13 \
   zedge=3.17,3.10,2.96 \
   sedge=0.00,0.00,0.00 \
32 xedge=2.60,2.62,2.64,2.65 \
   zedge=2.40,2.42,2.50,2.52 \
   sedge=0.00,0.00,0.00,0.00 \
33 xedge=4.35,4.37,4.42,4.45 \
   zedge=1.67,1.70,1.83,1.87 \
   sedge=0.00,0.00,0.00,0.00 \
34 xedge=5.26,5.30,5.32,5.34 \
   zedge=1.52,1.60,1.67,1.75 \
   sedge=0.00,0.00,0.00,0.00 \
35 xedge=7.40,7.43,7.44,7.47 \
   zedge=1.70,1.72,1.80,1.87 \
   sedge=0.00,0.00,0.00,0.00 \
36 xedge=3.00,3.02 \
   zedge=2.40,2.42 \
   sedge=0.00,0.00 \
kedge=1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28 \
sfill=5.00,0.05,0,0,0.50,0,0 \
sfill=5.00,0.50,0,0,0.44,0,0 \
sfill=1.80,1.40,0,0,0.30,0,0 \
sfill=9.00,1.24,0,0,0.30,0,0 \
sfill=1.00,2.35,0,0,0.25,0,0 \
sfill=9.00,1.48,0,0,0.25,0,0 \
sfill=1.80,2.49,0,0,0.22,0,0 \
sfill=5.70,1.56,0,0,0.22,0,0 \
sfill=9.00,1.63,0,0,0.22,0,0 \
sfill=0.20,2.30,0,0,0.16,0,0 \
sfill=0.80,3.22,0,0,0.16,0,0 \
sfill=1.12,3.09,0,0,0.16,0,0 \
sfill=4.41,1.82,0,0,0.16,0,0 \
sfill=5.29,1.59,0,0,0.16,0,0 \
sfill=5.71,1.74,0,0,0.16,0,0 \
sfill=7.43,1.79,0,0,0.16,0,0 \
sfill=8.79,1.64,0,0,0.16,0,0 \
sfill=9.01,1.89,0,0,0.16,0,0 \
sfill=1.41,4.50,0,0,0.03,0,0 > $modfile

psplot < $modfile > $psfile gtri=0.8 gedge=0 gmin=0 gmax=1 dxnum=2 dznum=2 labelz="Profundidad (km)" labelx="Distancia (km)" wbox=12.5 hbox=5.0

exit
