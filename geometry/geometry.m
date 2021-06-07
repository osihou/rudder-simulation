% GEOMETRY function
%
% Input:
% delta0 - [deg]
% yr - [m]
% xr - [m]
% x - [m]
%
% Output:
% dg - [deg]
function dg = geometry(yr, xr, x, delta0)

delta0 = delta0*pi/180; 

dg = arrayfun(@(x) (atan(sqrt(xr^2+yr^2-(xr-x)^2)/(xr-x))-delta0)*180/pi , x);

end



