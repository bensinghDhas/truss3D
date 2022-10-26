# truss3D
MATLAB library to solve 3D truss structures.

# Interfaces
'''
truss=makeTruss(nodes,edges);
truss.setDirichlet(nodeNo, bcNo, value);
truss.setNeuman(nodeNo,bcNo, value);
truss.checkInput();
[displacment, rotation]=truss.solve();
truss.plotReferenceConfig();
```
