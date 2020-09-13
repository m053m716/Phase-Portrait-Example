# Example Undamped Pendulum simulation

Code in this small repository relates to Chapter 3 of the Murphy dissertation. 

Clicking "Run" with `main.m` open in the Matlab editor should generate figures similar to the following:

![](https://raw.githubusercontent.com/m053m716/Phase-Portrait-Example/master/Undamped%20Pendulum%20Example.png)

Dynamics on the `<Position, Velocity>` phase plane can be modified by changing `A` and `B` in the function `undamped_pendulum`. Initial conditions determine whether the blue and red lines remain in "orbit" around some point: these can be adjusted as desired by changing values in the terms `BLUE_INITIAL_CONDITIONS` and `RED_INITIAL_CONDITIONS` in `main.m`.