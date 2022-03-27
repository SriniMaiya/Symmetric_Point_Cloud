function pc = transformPC(ptcl, axis, angle )

%INPUT: A 3d point array/ Pointcloud object; 
%       Desired axis of rotation
%       Angle of rotation

%OUTPUT: Rotated point cloud 


%Check if the input is a point cloud
t = isa(ptcl, 'pointCloud');
if ~t
    %If not, convert the array to point cloud object to rotate the point
    %cloud using pctransform function
    ptcl = pointCloud(ptcl);
end
%Convert the degrees into radians
angle = -angle*pi/180;


if axis == "x"
    alpha = angle;
    %Rotation Matrix for alpha (rotate along x-axis)
    Rx = [     1            0            0         0
               0        cos(alpha)  -sin(alpha)    0   
               0        sin(alpha)   cos(alpha)    0
               0            0            0         1];
    %Build a rigid transformation matrix
    tform = affine3d(Rx);
    %Rotate the point cloud 
    pc = pctransform(ptcl, tform);
    
elseif axis == "y"
    beta = angle;
    %Rotation Matrix for beta (rotate along y-axis)
    Ry = [ cos(beta)   0      sin(beta)    0 
               0       1         0         0
          -sin(beta)   0     cos(beta)     0
               0       0         0         1];
    %Build a rigid transformation matrix
    tform = affine3d(Ry);
    %Rotate the point cloud 
    pc = pctransform(ptcl, tform);
    
elseif axis == "z"
    gamma = angle;
    %Rotation Matrix for gamma (rotate along z-axis)
    Rz = [ cos(gamma)  -sin(gamma)    0      0
           sin(gamma)  cos(gamma)     0      0
               0           0          1      0
               0           0          0      1];
    %Build a rigid transformation matrix
    tform = affine3d(Rz);
    %Rotate the point cloud 
    pc = pctransform(ptcl, tform);
    
end  
