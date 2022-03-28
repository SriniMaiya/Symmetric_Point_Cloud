# Symmetric_Point_Cloud
A Matlab Project, to find the Bilateral Symmetry of a complete point cloud and to interpolate the missing points of an incomplete point cloud by means of ICP registeration as well as manual interpolation.


To find more details and the workflow of the project, please check the project report [here](https://github.com/SriniMaiya/Symmetric_Point_Cloud/blob/main/P1_Symmetric_Point_Cloud_923123_998190.pdf).

### To get the project running: 
  - Clone the project
    `git@github.com:SriniMaiya/Symmetric_Point_Cloud.git`
    
    All the necessary utility functions and the point clouds are already in the repository.
    
  - Run `Kicker_Complete_SymmPlane.mlx` to detect the symmetry plane of the model.
    - Visualize the code and results in [Kicker_Complete_SymmPlane.pdf](https://github.com/SriniMaiya/Symmetric_Point_Cloud/files/8360938/Kicker_Complete_SymmPlane.pdf)
  - Run `Kicker_InComplete_ICP_Registration.mlx` to perform a point cloud registeration using ICP registeration.
    - Visualize the code and results in [Kicker_InComplete_ICP_Registration.pdf](https://github.com/SriniMaiya/Symmetric_Point_Cloud/files/8360946/Kicker_InComplete_ICP_Registration.pdf)
  - Run `Kicker_InComplete_Interpolation.mlx` to visualize the manual interpolation of the missing points.




TODO:
- [ ] Add Documentation and elaborate readme File

