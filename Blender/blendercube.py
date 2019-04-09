#!/usr/bin/env python

import bpy
from random import randint
#bpy.ops.mesh.primitive_cube_add()

#how many cubes you want to add
count = 100

for c in range(0,count):
    x = randint(-100,100)
    y = randint(-100,100)
    z = randint(-100,100)
    print(c, x, y, z)
    bpy.ops.mesh.primitive_cube_add(location=(x,y,z))
