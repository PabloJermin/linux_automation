#!/bin/bash

# a pssword generator 

tr_num='0-9'
tr_lower='a-z'
tr_upper='A-Z'
tr_special='></?;'
max_strin_len=8

GEN=c tr -dc "${tr_num}${tr_lower}${tr_upper}${tr_special}" </dev/urandom | head -c ${max_strin_len}; echo
