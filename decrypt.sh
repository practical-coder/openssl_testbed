#!/usr/bin/env bash
openssl3 enc -aes-256-cbc -K `cat 256bit_encryption.key` -iv `cat 128bit_init_vector.key` -d -in somefile.txt.encrypted -out somefile.txt.decrypted
