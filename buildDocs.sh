#!/usr/bin/env bash

# first, copy over any extra shortcodes, like the pdf embedded shortcode
# https://stackoverflow.com/questions/793858/how-to-mkdir-only-if-a-directory-does-not-already-exist

if [ ! -r ./docs/node_modules ]; then
    docker run --rm --volume $PWD:/src -w "/src" capsulecorplab/hugo-asciidoctor-plantuml:0.76.5-alpine 'cd docs && npm ci'
fi

if [ ! -r ./docs/public ]; then
    docker run --rm --volume $PWD:/src -w "/src" capsulecorplab/hugo-asciidoctor-plantuml:0.76.5-alpine 'cd docs && hugo --minify -v --destination public'
fi
