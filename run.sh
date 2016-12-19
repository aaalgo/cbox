#!/bin/bash

docker run -it -v $PWD/build:/build -v $PWD/cbox:/opt/cbox $* aaalgo:cbox /bin/bash
