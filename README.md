# docker-jekyll ![License badge][license-img] [![Docker badge][docker-img]][docker-url]

## Overview

Docker image of Jekyll.

## Description

Jekyll  is a  simple, blog-aware,  static site  generator. It  takes a  template
directory  containing raw  text  files in  various formats,  runs  it through  a
converter  (like  [Markdown](http://daringfireball.net/projects/markdown/))  and
our [Liquid](https://github.com/Shopify/liquid/wiki)  renderer, and spits  out a
complete,  ready-to-publish  static  website  suitable  for  serving  with  your
favorite web server.

http://jekyllrb.com/

## Usage

```bash
$ docker run \
  	 --rm \
  	 -v /path/to/bind/from/host:/path/to/bind/in/container:rw \
	 dalenys/jekyll \
	 bash -c 'cd /path/to/bind/in/container && jekyll build && jekyll serve'
```

## Development

Feel free to contribute on GitHub.

```
    ╚⊙ ⊙╝
  ╚═(███)═╝
 ╚═(███)═╝
╚═(███)═╝
 ╚═(███)═╝
  ╚═(███)═╝
   ╚═(███)═╝
```

[license-img]: https://img.shields.io/badge/license-ISC-blue.svg
[docker-img]: https://img.shields.io/docker/pulls/dalenys/jekyll.svg
[docker-url]: https://registry.hub.docker.com/u/dalenys/jekyll
