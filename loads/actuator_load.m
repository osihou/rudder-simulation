% ACTUATOR LOAD function
%
% Input:
% rho   - air density [kgm/m^3]
% S     - rudder surface [m^2]
% delta - angle of attack of the rudder [deg]
% v     - velocity [m/s]
%
% Output:
% Q     - force [N]
function Q = actuator_load(rho, S, delta, v)

fd = drag_force(rho, S);

for i = 1:length(delta)
    for j = 1:length(v)
        Q(i,j) = fd(delta(i), v(j));
    end
end

end