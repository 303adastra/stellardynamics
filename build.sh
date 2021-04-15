#!/usr/bin/env bash

# first, copy over any extra shortcodes, like the pdf embedded shortcode
# https://stackoverflow.com/questions/793858/how-to-mkdir-only-if-a-directory-does-not-already-exist

if [ ! -r ./node_modules ]; then
    docker run --rm --volume $PWD:/src -w "/src" capsulecorplab/hugo-asciidoctor-plantuml:0.82.0-alpine 'npm ci'
fi
if [ ! -r ./public ]; then
    docker run --rm --volume $PWD:/src -w "/src" capsulecorplab/hugo-asciidoctor-plantuml:0.82.0-alpine 'hugo --minify -v --destination public'
fi
