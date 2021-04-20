function cl = NACA0012_Cl (alpha)   
cza5 = -4.866741209 *10^(-7);
cza4 = 1.30404838 *10^(-6);
cza3 = 8.493170999 *10^(-5);
cza2 = 1.96743954 * 10^(-5);
cza1 = 0.10356842569;
cza0 = -0.00464053014;

cl = cza5*alpha^5 + cza4 * alpha^4 + cza3 * alpha^3 + cza2 * alpha^2 + cza1 * alpha + cza0;
end