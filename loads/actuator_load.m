% ACTUATOR LOAD
function Q = actuator_load(rho, S, delta, v)

fd = drag_force(rho, S);

for i = 1:length(delta)
    for j = 1:length(v)
        Q(i,j) = fd(delta(i), v(j));
    end
end

end