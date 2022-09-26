#!/bin/bash

echo 'git pull'
git pull

sqlplus -s tylhuang/Tyler123H! << EOF
whenever sqlerror exit sql.sqlcode;
set echo off 
set heading off

@dropTables.sql
@createTables.sql
@loadData.sql

exit;
EOF