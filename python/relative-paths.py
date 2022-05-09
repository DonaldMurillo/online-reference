import os

dirname = os.path.dirname(__file__)
filename = os.path.join(dirname, 'your relative path to the file')

print(filename)

path = "/Users/krunal/Desktop/code/pyt/database"
  
start = "/Users/krunal"

relative_path = os.path.relpath(path, start)

print(relative_path)

abspath = os.path.abspath("relative-paths.py")
print(abspath)

print(os.path.realpath(os.path.join(os.path.dirname(__file__), '..', 'data', 'mydata.json')))
# results in C:\projects\relative_path\data\mydata.json
