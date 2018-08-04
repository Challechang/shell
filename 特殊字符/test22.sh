#!/bin/bash

if [ ! -w 't.txt' ]
then
    touch t.txt
fi

echo 'test text' >> t.txt
cp t.{txt,back}
