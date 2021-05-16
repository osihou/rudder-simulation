% NACA 0012 CL
function cl = NACA0012_Cl (alpha)   

cza3 = -0.00005047292214;
cza2 = -0.00004669693541;
cza1 = 0.111121581413601;
cza0 = 0.001431653121071;

cl = cza3 * alpha^3 + cza2 * alpha^2 + cza1 * alpha + cza0;
end