# truss3D
MATLAB library to solve 3D truss structures.

## Interfaces
Use nodes and edges to create a truss. nodes is an n x 3 array, which represent n points in 3D space. edges is a m x 2 array describing the node numbers of start and end nodes.
```
truss=makeTruss(nodes,edges);
```
Set the Dirichlet (displacement) and Neuman (force) boundary conditions.
```
truss.setDirichlet(nodeNo, bcNo, value);
truss.setNeuman(nodeNo,bcNo, value);
```
Check the input and solve the truss.
```
truss.checkInput();
[displacment, rotation]=truss.solve();
```
Display the deformed shape of the truss.
```
truss.plotReferenceConfig(figId, lineColour);
truss.plotDeformedConfig(figId, lineColour);
```
## Checks
Check for duplicate and duplicate edges.
```
truss.checkDuplicateNodes();
truss.checkDuplicateEdges();
```
It is adviceable to do the input checks before setting the Neuman and Dirichlet boundary conditions.
