# Vulkan.docs

Pre-built [Vulkan documentation](https://github.com/KhronosGroup/Vulkan-Docs) in docker.

Build Docker first:

```shell
$ docker build -t vulkan/docs .
```

And then build the documentation:

```shell
# build Single-file HTML5 file
$ bash build.sh html
# build Chunked in HTML5(build failed):
$ bash build.sh chunked
# Build pdf
$ bash build.sh pdf
```


