#!/bin/bash

OF=~/backups/my-backup-$(date +%Y%m%d).tgz

tar -cZf $OF /home/nikolai/Workspace/langs/bash/notes
