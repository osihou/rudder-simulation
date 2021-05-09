% DRAG FORCE
function fd = drag_force(rho, S)

fd = @(delta,v) 0.5 * rho * S * (v^2) * NACA0012_Cd(delta); 

end