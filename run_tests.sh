#!/bin/bash
docker run -it --rm  -v $(pwd):/usr/src/app jnjsdet/robot-framework robot tests

RESULT=$?
exit $RESULT