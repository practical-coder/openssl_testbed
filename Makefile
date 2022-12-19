.PHONY: clean digest init
CC = gcc
CFLAGS = -Wall
# linking to openssl@3 in custom location
CFLAGS += -I/usr/local/opt/openssl@3/include
LDFLAGS += -L/usr/local/opt/openssl@3/lib
LDLIBS += -lssl -lcrypto
init:
	$(CC) -o openssl_init $(CFLAGS) $(LDFLAGS) $(LDLIBS) openssl_init.c
digest:
	$(CC) -o digest $(CFLAGS) $(LDFLAGS) $(LDLIBS) digest.c
clean:
	rm -f openssl_init
# check shared libs linking (MacOS)
check:
	otool -L openssl_init
