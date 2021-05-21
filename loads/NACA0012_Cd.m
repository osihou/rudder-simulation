% NACA 0012 CD function
% Calculates drag coefficient from a given angle of attack.
%
% Input:
% alpha - angle of attack [deg]
%
% Output:
% cd - drag coefficient []
function cd = NACA0012_Cd(alpha)

% Approximation parameters
cxa2 = 0.005765314575762;
cxa1 = 0.000257423595222;
cxa0 = 0.005827199612785;

cz = NACA0012_Cl(alpha);

cd = cxa2 * cz^2 + cxa1 * cz + cxa0;

end