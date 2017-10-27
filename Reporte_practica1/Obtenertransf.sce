function [yt]=obtenertrans(a,b,c,d,T)			//Funcion 
    t =[0:0.001:T]';					//valor del tiempo
    if d == 0 then					//si d = 0 solo es el escalon unitario por una constante
    yt = c/a + t*0;					 
    else
    yt = (c/a) + (a*b-c*d)/(a*d)*exp((-a/d)*t);         //respuesta de escalon unitario
    end
    plot2d(t,yt)					//grafica funcion
    xgrid
endfunction
