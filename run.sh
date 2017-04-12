#!/bin/bash

docker run --rm -it -v $PWD/build:/build -v $PWD/cbox:/opt/cbox $* aaalgo:cbox /bin/bash
