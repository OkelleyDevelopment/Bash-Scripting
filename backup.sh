#!/bin/bash

OF="my-backup-$(date +%Y%m%d).tbz"

tar -cjf $OF "./" 
