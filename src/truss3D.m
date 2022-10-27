classdef truss3D< handle
    properties
        nodes
        edges
        noEl
        noNd
    end
    methods
        %%Constructor
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

        %%plotting functions
        function plot(obj,figId)
            figure(figId)
            hold on;
            for itEg=1:obj.noEl
                tmp=obj.nodes(obj.edges(itEg,:),:);
                plot3(tmp(:,1),tmp(:,2),tmp(:,3),'-ob', LineWidth=2, markerFaceColor='k');
            end
            hold off
        end
    end
end