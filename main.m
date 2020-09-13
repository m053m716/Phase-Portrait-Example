%MAIN Contains code to organize the rest of the example repo

clear; clc;

y = initializeGrid(); % Initialize values for grid of phase portrait
dy = undamped_pendulum(y);


fig = figure(...
   'Name','Phase Portrait Undamped Pendulum',...
   'Color','w',...
   'NumberTitle','off',...
   'Units','Normalized',...
   'Position',[0.25 0.2 0.45 0.7]);
ax = axes(fig,...
   'XColor','k','YColor','k',...
   'LineWidth',1.5,'FontName','Arial','NextPlot','add',...
   'XLim',[min(y(1,:)), max(y(1,:))],'YLim',[min(y(2,:)),max(y(2,:))]);
quiver(ax,y(1,:),y(2,:),dy(1,:),dy(2,:),'k',...
   'LineWidth',1.5,...
   'DisplayName','dy/dt');
xlabel(ax,'\bf\ity_1\rm ~ Position','FontName','Arial','Color','k');
ylabel(ax,'\bf\ity_2\rm ~ Velocity','FontName','Arial','Color','k');
title(ax,'Phase Portrait: Undamped Pendulum (no driving force)',...
   'FontName','Arial','Color','k');

% Solve system using ODE45 with different initial conditions
[~,ys] = ode45(@(t,y)undamped_pendulum(y),[0 10],[pi/4; pi/4]);
plot(ax,ys(:,1),ys(:,2),...
   'Color','b',...
   'LineWidth',2,...
   'MarkerIndices',1,...
   'Marker','o',...
   'MarkerFaceColor','b',...
   'DisplayName','Stable Fixed Point');

% Solve system using ODE45 with different initial conditions
[~,ys] = ode45(@(t,y)undamped_pendulum(y),[0 5],[8.8; -1]);
plot(ax,ys(:,1),ys(:,2),...
   'Color','r',...
   'LineWidth',2,...
   'MarkerIndices',1,...
   'Marker','o',...
   'MarkerFaceColor','r',...
   'DisplayName','Unstable Fixed Point');

legend(ax,'TextColor','k','FontName','Arial');

saveas(fig,'Undamped Pendulum Example.png');
savefig(fig,'Undamped Pendulum Example.fig');
pause(0.5);
delete(fig);