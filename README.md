# Vulkan.docs

Pre-built [Vulkan API Specification](https://github.com/KhronosGroup/Vulkan-Docs) in docker. See [release page](https://github.com/unknownue/Vulkan.docs/releases) to download documentation.

The chunked build is not available currently.

Build Docker image first:

```shell
$ docker build -t vulkan/docs .
```

And then build the documentation:

```shell
# build Single-file HTML5 file
$ bash build.sh html
# or build Chunked in HTML5:
$ bash build.sh chunked
# or Build pdf
$ bash build.sh pdf
# or ALL
$ bash build.sh all
```


