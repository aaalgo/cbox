#!/bin/bash

docker run -it -v $PWD:/build -v $PWD/cbox:/opt/cbox aaalgo:cbox /bin/bash
