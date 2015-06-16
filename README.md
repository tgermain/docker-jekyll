# docker-jekyll

[![Build Status](https://travis-ci.org/rentabiliweb/docker-jekyll.svg?branch=master)](https://travis-ci.org/rentabiliweb/docker-jekyll)

#### Table of Contents

1. [Overview](#overview)
2. [Description](#description)
3. [Usage](#usage)
4. [Development](#development)

## Overview

Docker images and builders of Jekyll.

## Description

Jekyll  is a  simple, blog-aware,  static site  generator. It  takes a  template
directory  containing raw  text  files in  various formats,  runs  it through  a
converter  (like  [Markdown](http://daringfireball.net/projects/markdown/))  and
our [Liquid](https://github.com/Shopify/liquid/wiki)  renderer, and spits  out a
complete,  ready-to-publish  static  website  suitable  for  serving  with  your
favorite web server.

## Usage

```bash
$ docker run \
  	 --rm \
  	 -v /path/to/bind/from/host:/path/to/bind/in/container:rw \
	 rentabiliweb/jekyll \
	 bash -c 'cd /path/to/bind/in/container && jekyll build && jekyll serve'
```

## Development

Feel free to contribute on GitHub.
