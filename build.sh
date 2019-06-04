#!/usr/bin/env bash

set -e

mkdir -p docs/{getting-started,rhel,windows}

cd books && asciidoctor index.adoc -o ../docs/index.html
cd -

for dir in getting-started rhel windows ; do
  cd books/$dir && asciidoctor master.adoc -o ../../docs/$dir/index.html
  cd -
done
