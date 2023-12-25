#!/bin/bash

DESTINATION=$1

# clone Flectra directory
git clone --depth=1 https://github.com/6Ministers/penpot-for-business-apps $DESTINATION
rm -rf $DESTINATION/.git


