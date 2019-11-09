#!/bin/bash
docker run -it --rm  -v $(pwd):/usr/src/app jnj-robot robot --argumentfile $1

RESULT=$?
exit $RESULT