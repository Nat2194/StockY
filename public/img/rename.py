import os

count = 1
# count increase by 1 in each iteration
# iterate all files from a directory
for file_name in os.listdir("./fake/"):
    # Construct old file name
    source = "./fake/" + file_name

    # Adding the count to the new file name and extension
    destination = "./fake/" +  str(count) + ".jpeg"

    # Renaming the file
    os.rename(source, destination)
    count += 1