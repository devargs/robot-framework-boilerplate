#!/bin/bash
docker run --rm  -v $(pwd):/usr/src/app jnj-robot robot --argumentfile $1

RESULT=$?
exit $RESULT