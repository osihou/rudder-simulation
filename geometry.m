function deg = geometry(y, x, dx, delta0)

delta0=delta0*pi/180; 

deg = arrayfun(@(dx) (atan(sqrt(x^2+y^2-(x-dx)^2)/(x-dx))-delta0)*180/pi , dx);

end



