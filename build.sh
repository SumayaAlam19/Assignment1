#!/bin/sh

# make a distribution directory

mkdir -p dist # copy Ruby files to the distribution directory

cp ./SA_PHOTOGRAPHY.rb ./dist # <<< These should be the names of *your* ruby files.
cp ./SA_PHOTOGRAPHY_clss.rb ./dist

gem install tty-prompt 

gem install colorize 

# Also, you should try running it to make sure there are no errors with the script.

