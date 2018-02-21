## Hacker Slides

[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/msoedov/hacker-slides/blob/master/LICENSE)
[![Build Status](https://travis-ci.org/msoedov/hacker-slides.svg?branch=master)](https://travis-ci.org/msoedov/hacker-slides)
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fmsoedov%2Fhacker-slides.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2Fmsoedov%2Fhacker-slides?ref=badge_shield)
[![](https://images.microbadger.com/badges/image/msoedov/hacker-slides:latest.svg)](https://microbadger.com/images/msoedov/hacker-slides "Hacker slides image")
[![Open Source Helpers](https://www.codetriage.com/msoedov/hacker-slides/badges/users.svg)](https://www.codetriage.com/msoedov/hacker-slides)

This repo is a reworked version of [Sandstorm Hacker Slides](https://github.com/jacksingleton/hacker-slides) which features easy set up run outside of Sandstorm and without vagrant-spk. Likewise you can publish and edit your previous markdown slides which is not supported in the original version.


#### Features:

- Reach ui editor
- Markdown markup
- Live reload
- Color schemes
- Pdf print
- [Demo version](https://murmuring-sierra-54081.herokuapp.com)
- Tiny 10 Mb docker image
- Optional Basic auth


| Edit mode | Published  |
| --- | --- | --- |
| ![1st](https://sc-cdn.scaleengine.net/i/520e2f4a8ca107b0263936507120027e.png) | ![1st](https://sc-cdn.scaleengine.net/i/7ae0d31a40b0b9e7acc3f131754874cf.png) |
|![2nd](https://sc-cdn.scaleengine.net/i/5acba66070e24f76bc7f20224adc611e.png) | ![2nd](https://sc-cdn.scaleengine.net/i/fee3e1374cb13b1d8c292becb7f514ae.png) |


Run from docker image
-----
```shell
docker run -it -p 8080:8080 -v $(pwd)/slides:/app/slides msoedov/hacker-slides
```

Build locally
----
To build and run it locally
```go
go get
go run main.go

[GIN-debug] Listening and serving HTTP on :8080
```

And then you can just open [http://127.0.0.1:8080](http://127.0.0.1:8080) and it's ready to use with sample slides.

Run with docker

```shell
docker run -it -p 8080:8080 -v $(pwd)/slides:/app/slides msoedov/hacker-slides
```

Protect slides with password
----
Basic auth (disabled by default)
```shell
USER=bob PASSWORD=password1 go run main.go
[GIN-debug] [WARNING] Running in "debug" mode. Switch to "release" mode in production.
 - using env:	export GIN_MODE=release
 - using code:	gin.SetMode(gin.ReleaseMode)

WARN[0000] Auth mode enabled
WARN[0000] Visit http://bob:password1@0.0.0.0:8080
```

```shell
docker run -it -p 8080:8080 -e USER=bob -e PASSWORD=password1 -v $(pwd)/slides:/app/slides msoedov/hacker-slides
```

Getting Help
------------

For **feature requests** and **bug reports**  submit an issue
to the GitHub issue tracker


## License
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fmsoedov%2Fhacker-slides.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2Fmsoedov%2Fhacker-slides?ref=badge_large)