# PCL

## Depth map amd depth cameras :camera:
**Depth cameras** are cameras which give back depth data its better then stereo camera retup as it has a higer realibity and is better then lidar as its more cost-effective. RGB-D cameras use an IR sensor and projector to map the depth locatation to the respective pixels on the map.

Here is an example of using a Depth Map and Image to find its point cloud
![](images/Screenshot%20from%202021-10-08%2014-25-09.png)

## Point cloud Library :red_circle:

### DownSample

Down Sampling is very imporatnt tool to reduce computation time as larger amplitue of the signal higher the amplitude of noise so we can nreduce the absolte value of the noise
we used Voxel Grid filter to downsample
``` python
vox = cloud.make_voxel_grid_filter()
LEAF_SIZE = 0.01
vox.set_leaf_size(LEAF_SIZE,LEAF_SIZE,LEAF_SIZE)
cloud_filtred = vox.filter()
```
### Passthrough

Passthrough filters are something like band pass filters in commounicaction it just allows value in a certian region along a axis
``` python
filter_axis = 'z'
passthrough = cloud_filtred.make_passthrough_filter()
passthrough.set_filter_field_name(filter_axis)
ax_min=0.78
ax_max=1.2
passthrough.set_filter_limits(ax_min,ax_max)
cloud_filtred = passthrough.filter()
```
![](images/Screenshot%20from%202021-10-08%2017-18-22.png)

### RANSAC
Next in your perception pipeline, you need to remove the table itself from the scene. To do this you will use a popular technique known as Random Sample Consensus or "RANSAC". RANSAC is an algorithm, that you can use to identify points in your dataset that belong to a particular model. In the case of the 3D scene you're working with here, the model you choose could be a plane, a cylinder, a box, or any other common shape.

The RANSAC algorithm assumes that all of the data in a dataset is composed of both inliers and outliers, where inliers can be defined by a particular model with a specific set of parameters, while outliers do not fit that model and hence can be discarded. Like in the example below, we can extract the outliners that are not good fits for the model.
![](images/Screenshot%20from%202021-10-12%2012-38-07.png)
### Noise Filter

#### Stastical_filter
Although calibration can solve the distortion problem, noise caused by external factors (such as dust in the environment, humidity in the air, or the presence of various light sources) can cause sparse outliers, which can further ruin the results.

These outliers will complicate the estimation of point cloud features (such as curvature, gradient, etc.), leading to incorrect values, which may lead to failures in various stages of our perception process.

One filtering technique used to remove such outliers is to perform statistical analysis near each point and remove those points that do not meet certain conditions. PCL's Statistics Outlier Removal filter is an example of one of the filtering techniques. For each point in the point cloud, it calculates the distance to all its neighbors, and then calculates the average distance.

By assuming a Gaussian distribution, all points whose average distance is outside the interval defined by the global distance mean + standard deviation are regarded as outliers and deleted from the point cloud.
![](images/Screenshot%20from%202021-10-12%2012-52-59.png)
### *This repo is under development and contains all my learnings about PCL*