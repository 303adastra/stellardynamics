#!/bin/sh

#export PATH="$PWD/bin:$PATH"
hugo serve --bind=0.0.0.0 --buildDrafts --disableFastRender --destination public
