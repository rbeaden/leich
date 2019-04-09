#!/usr/bin/env python

import bpy
from random import randint
import time
#bpy.ops.mesh.primitive_cube_add()
time_start = time.time()

# print all objects
for obj in bpy.data.objects:
    print(obj.name)

# print all scene names in a list
print(bpy.data.scenes.keys())

# remove mesh Cube
if "Cube" in bpy.data.meshes:
    mesh = bpy.data.meshes["Cube"]
    print("removing mesh", mesh)
    bpy.data.meshes.remove(mesh)

#how many cubes you want to add
count = 1000

for c in range(0,count):
    x = randint(-500,500)
    y = randint(-500,500)
    z = 1
    print(c, x, y, z)
    bpy.ops.mesh.primitive_ico_sphere_add(location=(x,y,z))

print("My Script Finished: %.4f sec" % (time.time() - time_start))
