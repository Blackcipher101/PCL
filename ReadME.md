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
### *This repo is under development and contains all my learnings about PCL*