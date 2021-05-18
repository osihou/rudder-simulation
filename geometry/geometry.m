% GEOMETRY function
% Calculates something based on something
%
% Input:
% delta0 - 
% yr - 
% xr -
% x -
% delta0 - 
%
% Output:
% deg -
function deg = geometry(yr, xr, x, delta0)

delta0 = delta0*pi/180; 

deg = arrayfun(@(x) (atan(sqrt(xr^2+yr^2-(xr-x)^2)/(xr-x))-delta0)*180/pi , x);

end



