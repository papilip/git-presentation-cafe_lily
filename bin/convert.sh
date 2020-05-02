#!/usr/bin/env bash

pres_adoc=''
if [ -n "$1" ]; then
  pres_adoc=$1
else
  pres_adoc='presentation.adoc'
fi
if [ ! -f "$pres_adoc" ]; then
  echo 'Usage: bin/convert.sh presentation.adoc'
fi
bundle exec asciidoctor-revealjs --attribute revealjsdir=node_modules/reveal.js $pres_adoc

pres_html='presentation.html'
if [ -f "$pres_html" ]; then
  ## Copie le html dans le dossier “gh-pages”
  cp presentation.html gh-pages/presentation.html
  ## Change les chemins
  sed -i.bak 's/node_modules\/reveal.js/./g' gh-pages/presentation.html
fi
