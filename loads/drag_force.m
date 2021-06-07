% DRAG FORCE function
%
% Input:
% rho   - air density [kg/m^3]
% S     - rudder surface [m^2]
%
% Output:
% fd    - function
function fd = drag_force(rho, S)

fd = @(delta,v) 0.5 * rho * S * (v^2) * NACA0012_Cd(delta); 

end