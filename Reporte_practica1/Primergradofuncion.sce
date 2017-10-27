// Copyright (C) 2017 - Instituto Tecnologico de Morelia 
// by Gerardo Marx Chavez-Campos
// This code has been developed for educational propouses
// the institution and author do not guarantee  the proper
// functionality of the code.
//
// Date of creation: Oct 2, 2017
s = %s // The quicker alternative to using s =
poly (0 , 's' ) 
// Gain and time constant
K = 1;  
Tau = 1; 
simpleSys=syslin('c', K/(1+Tau*s))
t=0:0.01:15;
y=csim('step', t, simpleSys)
plot(t,y)
xgrid
