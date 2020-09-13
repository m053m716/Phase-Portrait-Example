function y = stable_attractor(t,y)
%STABLE_ATTRACTOR System of equations for ODEs that converge to stable fixed point
%
%  y = stable_attractor(t,y);
%
% Inputs
%  t - Current timestep
%  y - Current value
%
% Output
%  y - Updated angle and velocity

if nargin == 1
   y = t;
end

C = [-0.5 0.0 ;...
     0.0  -0.25];

y = C * y;

end