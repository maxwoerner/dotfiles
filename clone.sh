#!/bin/sh

echo "Cloning repositories..."

# Create subdirectories
mkdir $HOME/dev/sites
mkdir $HOME/dev/python
mkdir $HOME/dev/packages
mkdir $HOME/dev/infra

DEV=$HOME/dev
SITES=$DEV/sites
PYTHON=$DEV/python
PACKAGES=$DEV/packages
INFRA=$DEV/infra

# Sites
git clone git@github.com:mxwebdev/gigtune.git $SITES/gigtune
git clone git@github.com:mxwebdev/crm.git $SITES/crm
git clone git@github.com:mxwebdev/gameday.git $SITES/gameday
git clone git@github.com:mxwebdev/static-site-starter.git $SITES/static-site-starter
git clone git@github.com:mxwebdev/mxweb.git $SITES/mxweb
git clone git@github.com:mxwebdev/lebenslang.git $SITES/lebenslang
git clone git@github.com:mxwebdev/wz.git $SITES/wz
git clone git@github.com:mxwebdev/wp-tsvr-theme.git $SITES/wp-tsvr-theme
git clone git@github.com:mxwebdev/totoandthekids.git $SITES/totoandthekids

# Python
git clone git@github.com:mxwebdev/file-merger-api.git $PYTHON/file-merger-api

# Packages
git clone git@github.com:mxwebdev/blade-components.git $PACKAGES/mxwebdev/blade-components

# Infrastructure
git clone git@github.com:mxwebdev/gigtune-infra.git $INFRA/gigtune-infra
git clone git@github.com:mxwebdev/mxweb-infra.git $INFRA/mxweb-infra
git clone git@github.com:mxwebdev/tf-mxweb-s3-bucket.git $INFRA/modules/tf-mxweb-s3-bucket
git clone git@github.com:mxwebdev/tf-laravel-site.git $INFRA/modules/tf-laravel-site

git clone git@github.com:maxwoerner/unifi-infra.git $INFRA/unifi-infra
git clone git@github.com:maxwoerner/unifi-traefik-docker.git $INFRA/unifi-traefik-docker
git clone git@github.com:maxwoerner/ufw-domain-resolver.git $INFRA/ufw-domain-resolver
