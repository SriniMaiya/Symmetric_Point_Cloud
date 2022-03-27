function [pc, vals] = interpolatePoints(points)

%INPUT: 3D array of points
%OUTPUT: interpolated point cloud; Euclidean distance of all the points of
%the point cloud to the center of the point cloud. Biased in X-axis


[num_rows,~] = size(points);

    vals = 0;

    %Interpolate points
    for k = 1:num_rows
        point = points(k,:);
        point(1) = -1 * point(1);
        points = [points
                  point];

    end
    
    %Convert to point cloud object and downsample
    pc = pointCloud(points);
    pc = pcdownsample(pc, "gridAverage", 1);
    pc = pc.Location;
    [num_rows, ~] = size(pc);
    
    %Calculate the sum of Euclidean distance of all points biased in x-axis
    for k = 1:num_rows
        
        vals = vals + sqrt( 30* abs(pc(k,1))^2 + ...
                        abs(pc(k,2))^2 + abs(pc(k,3)^2));
    end
    
    pc = pointCloud(pc);

end