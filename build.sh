#/usr/bin/bash

# bash build.sh html
# bash build.sh chunked
# bash build.sh pdf

docker run --rm -v $(pwd)/output:/root/Vulkan-Docs/out -w /root/Vulkan-Docs vulkan/docs ./makeAllExts $1
