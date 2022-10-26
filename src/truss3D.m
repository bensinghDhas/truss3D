classdef truss3D< handle
    properties
        nodes
        edges
        noEl
        noNd
    end
    methods
        function obj=truss3D(nodes, edges)
            if (size(nodes,2)==3 && size(edges,2)==2)
                obj.nodes=nodes;
                obj.edges=edges;
                obj.noEl=size(edges,1);
                obj.noNd=size(nodes,1);
            else
                error("Invalid input: Points are not in 3D")
            end
        end
    end
end