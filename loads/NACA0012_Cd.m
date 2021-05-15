% NACA 0012 CD
function cd = NACA0012_Cd(alpha)
% cxa5 = 0.000598309836584;
% cxa4 = 0.000371501618906;
% cxa3 = -0.000829444131084;
% cxa2 = 0.005234101591727;
% cxa1 = 0.000366568053911;
% cxa0 = 0.005923019222925;

cxa5 = 0;
cxa4 = 0;
cxa3 = 0;
cxa2 = 0.005765314575762;
cxa1 = 0.000257423595222;
cxa0 = 0.005827199612785;

cz = NACA0012_Cl(alpha);

cd = cxa5 * cz^5 + cxa4 * cz^4 + cxa3 * cz^3 + cxa2 * cz^2 + cxa1 * cz + cxa0;

end