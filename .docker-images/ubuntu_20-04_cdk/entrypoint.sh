#!/bin/sh
set -e

case $1 in
    bash|yarn|npm)
        $@
        ;;
    *)
        cdk $@
        ;;
esac
