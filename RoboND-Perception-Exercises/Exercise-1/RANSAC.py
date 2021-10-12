# Import PCL module
import pcl

# Load Point Cloud file
cloud = pcl.load_XYZRGB('tabletop.pcd')


# Voxel Grid filter
vox = cloud.make_voxel_grid_filter()

# PassThrough filter

LEAF_SIZE = 0.01
# RANSAC plane segmentation
vox.set_leaf_size(LEAF_SIZE,LEAF_SIZE,LEAF_SIZE)

# Extract inliers
cloud_filtred = vox.filter()
# Save pcd for table
filename = 'voxeldownandpassthrough.pcd'


filter_axis = 'z'
passthrough = cloud_filtred.make_passthrough_filter()
passthrough.set_filter_field_name(filter_axis)
ax_min=0.78
ax_max=1.2
passthrough.set_filter_limits(ax_min,ax_max)
cloud_filtred = passthrough.filter()
# Extract outliers
seg = cloud_filtred.make_segmenter()
seg.set_model_type(pcl.SACMODEL_PLANE)
seg.set_method_type(pcl.SAC_RANSAC)

pcl.save(cloud_filtred, filename)
max_dis=0.01
seg.set_distance_threshold(max_dis)
inliners,coffe=seg.segment()
extracted_inliners=cloud_filtred.extract(inliners,negative=False)
filename="inliner.pcd"
pcl.save(extracted_inliners,filename)
try:
    extracted_outliners=cloud_filtred.extract(inliners,negative=True)
except RuntimeError:
    print("maxdis wrong")
else:
    filename = 'extracted.pcd'
    pcl.save(extracted_outliners,filename)

# Save pcd for tabletop objects


