close all;
clear al;
clc;
addpath("..\src\");
nodes=[0 0 0; 1 0 0;2 1 0];
edges=[1 2;2 3];
truss=truss3D(nodes,edges);
truss.plot(1)