#!/usr/bin/env bash
# might need to replace the hadoop version jar below if you don't have this
if [ ! -d out ]; then
    mkdir out
fi

javac -cp ".:./libs/*" -d out src/org/myorg/WordCount.java && jar -cvf wordcount.jar -C out/ .
