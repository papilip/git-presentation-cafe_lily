#!/usr/bin/env bash

presentation=''
if [ -n "$1" ]; then
  presentation=$1
else
  echo 'Usage: bin/convert.sh presentation.adoc'
  presentation='presentation.adoc'
fi

bundle exec asciidoctor-revealjs --attribute revealjsdir=node_modules/reveal.js $presentation

## Ajouter une clause di le fichier présentation exist. PAs de message !
