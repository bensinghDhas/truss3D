classdef feMeshTruss< handle
    properties
        nodes
        elements
        noEl
        noNd
        npe=5
    end
    methods
        %% Constructor
        function obj=feMeshTruss(truss)
            % To construct a FE mesh for a truss, one needs to supply a
            % truss object as input.
            
        end

        function setNodesPerEdge(obj,n)
            obj.npe=n;
        end

        %% plotting functions
        function plot(obj,figId)
            figure(figId)
            hold on;
            for itEg=1:obj.noEl
                tmp=obj.nodes(obj.elements(itEg,:),:);
                plot3(tmp(:,1),tmp(:,2),tmp(:,3),'-ob', LineWidth=2, markerFaceColor='k');
            end
            hold off
        end
    end
end