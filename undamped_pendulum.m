function y = undamped_pendulum(t,y)
%UNDAMPED_PENDULUM System of equations for ODEs in common undamped pendulum example with no driving force
%
%  y = undamped_pendulum(t,y);
%
% Inputs
%  t - Time-step (is actually unused, but so that it works with ODE45; note
%                    that this makes the system autonomous and therefore it
%                    doesn't necessarily reflect reality)
%  y - [2 x k] array:
%           * y(1,:) the angle and 
%           * y(2,:) the angular velocity
%        of the undamped pendulum
%
% Output
%  y - Updated angle and velocity

if nargin == 1
   y = t;
end

y = [y(2,:); -sin(y(1,:))];

end