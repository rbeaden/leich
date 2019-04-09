#!/usr/bin/env python

import bpy, bmesh

scene = bpy.context.scene

for obji in scene.objects:
    if obji.type == 'MESH':
        scene.objects.active = obji
        bpy.ops.object.mode_set(mode='EDIT')

        obj = bpy.context.object
        me = obj.data
        bm = bmesh.from_edit_mesh(me)

        v1 = bm.verts.new((2.0, 2.0, 2.0))
        v2 = bm.verts.new((-2.0, 2.0, 2.0))
        v3 = bm.verts.new((-2.0, -2.0, 2.0))


        bm.edges.new((v1, v2))
        bm.edges.new((v2, v3))

        bmesh.update_edit_mesh(obj.data)
        bpy.ops.object.mode_set(mode='OBJECT')
