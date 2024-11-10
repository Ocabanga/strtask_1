import os, strutils

let dirs = walkDir(".") # Пример пути, используйте нужный путь к папкам
var dirNames = newSeq[string]()
var fileNames = newSeq[string]()
var extensions = newSeq[string]()

for path in dirs:
  if path.isDir:
    dirNames.add(path.splitPath().last.replace(" ", "_"))
  elif path.isFile:
    let fileName = path.splitPath().last
    fileNames.add(fileName.split(".")[0])
    extensions.add(fileName.split(".")[1])

echo "Dirs: ", dirNames
echo "Files: ", fileNames
echo "Extensions: ", extensions
