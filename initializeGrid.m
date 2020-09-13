function y = initializeGrid(angular_position,angular_velocity)
%INITIALIZEGRID Initialize grid for phase portrait
%
%  y = initializeGrid();
%  y = initializeGrid(angular_position,angular_velocity);
%
% Inputs
%  angular_position - Vector of angular positions for grid
%  angular_velocity - Vector of angular velocities for grid
%
% Output
%  y - [2 x k] array of all position and velocity combinations in grid

if nargin < 2
   angular_velocity = linspace(-1.1*pi,1.1*pi,16)';
else
   angular_velocity = angular_velocity(:)';
end

if nargin < 1
   angular_position = linspace(-1.25*pi,3.25*pi,31);
else
   angular_position = angular_position(:);
end

[X,Y] = meshgrid(angular_position,angular_velocity);
angular_position = X(:);
angular_velocity = Y(:);
y = [angular_position.'; ...
     angular_velocity.'];

end