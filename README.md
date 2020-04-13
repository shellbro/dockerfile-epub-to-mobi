# shellbro/epub-to-mobi

[![](https://img.shields.io/docker/cloud/build/shellbro/epub-to-mobi)](https://hub.docker.com/r/shellbro/epub-to-mobi/)

Convert all EPUB (&ast;.epub) e-books from `/input` dir to Mobipocket
(&ast;.mobi) e-books saved to `/output` dir with Amazon's KindleGen.

## Usage

Just run:

```
$ docker run --rm -u "$(id -u):$(id -g)" -v /some/host/path/input:/input -v /some/host/path/output:/output shellbro/epub-to-mobi
```
