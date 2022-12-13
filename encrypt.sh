#!/usr/bin/env bash
openssl3 enc -aes-256-cbc -K `cat 256bit_encryption.key` -iv `cat 128bit_init_vector.key` -e -in somefile.txt -out somefile.txt.encrypted
