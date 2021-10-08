import matplotlib.pyplot as plt
import matplotlib.image as mpimg
from mpl_toolkits.mplot3d import Axes3D
import numpy as np
from PIL import Image
from time import time

#############################
# Hit Test Run to Visualize #
#############################

# Read in the image and depth map as seperate assets
image_location = '1.png'
depth_map_location = '2.png'

# Load in the images
depth_map = Image.open(depth_map_location)   # Open image as PIL image object
image = mpimg.imread(image_location)
depth_map = depth_map.resize((image.shape[1],image.shape[0]))
depth_map=np.asarray(depth_map)

start_time = time()
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')
print(depth_map.shape)
rows, cols, etst = depth_map.shape

# Send pixels not correctly mapped to the back
# Use 1.1 to send the poorly mapped pixels back 10 percent 
# farther than the farthest correctly mapped point
max_val = depth_map.max() * 1.1

count = 0

# Cut down pixels for time purpose 
# Computations need to be under 30s
pixel_cut = 4
point_num = int(rows/pixel_cut+1) * int(cols/pixel_cut+1)
      
# Iterate thorugh all the pixels       
for x in range(cols):
    for y in range(rows):
        if (x % pixel_cut == 0 and y % pixel_cut == 0):
            
            # Count points done
            count+=1
            
            # TODO 
            # Get point color for pixel
            # Format as tuple: (R,G,B)
            pixel_color = ([image[y,x,0],image[y,x,1],image[y,x,2]])
            print(round(count*100/point_num))
            
            # TODO
            # Get point depth for each particle
            depth = depth_map[y,x]
            
            # Send points not correctly mapped to the back
            if depth == []:
                depth = max_val
                
            ax.scatter(x, depth, y, c = pixel_color, marker='o')

# Axis Labels
ax.set_xlabel('Width')
ax.set_ylabel('Depth')
ax.set_zlabel('Height')

plt.gca().invert_zaxis()

###########################################
# Play with me to change view rotation!
elevation = 40 # Up/Down
azimuth = 320 # Left/Right
###########################################


ax.view_init(elevation, azimuth)

plt.show() # Uncomment if running on your local machine
print ("Outputted {} of the {} points".format(count,6552))
print ("Results produced in {:04.2f} seconds".format(time()-start_time))
