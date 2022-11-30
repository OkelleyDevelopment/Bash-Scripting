#!/bin/bash

archive="my-backup-$(date +%Y-%m-%d).tbz"
tar -cvjf $archive $1
echo "archive named: " $archive
echo "Done."
