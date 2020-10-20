#!/bin/bash

for file in `ls dockerfiles/*.Dockerfile`; do
  tag=`echo $file | sed 's#.*/\(.*\)\\.Dockerfile#\1#'`
  echo "> docker build -f $file -t dataintuitive/pyscenic:$tag ."
  docker build -f $file -t dataintuitive/pyscenic:$tag .
done

echo "Done building! You probably want to run docker push now?"
echo "> docker push dataintuitive/pyscenic"
