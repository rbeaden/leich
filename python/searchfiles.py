import os

#with os.scandir('/') as entries:
#    for entry in entries:
#        print(entry.name)

# List all files in a directory using os.listdir
basepath = '/'
for entry in os.listdir(basepath):
    if os.path.isfile(os.path.join(basepath, entry)):
        print(entry)

# List all subdirectories using os.listdir
basepath = '/'
for entry in os.listdir(basepath):
    if os.path.isdir(os.path.join(basepath, entry)):
        print(entry)
