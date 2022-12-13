.PHONY: build clean
# linking to openssl@3 in custom location
CFLAGS += -I/usr/local/opt/openssl@3/include
LDFLAGS += -L/usr/local/opt/openssl@3/lib
LDLIBS += -lssl -lcrypto
build:
	gcc -o openssl_init $(CFLAGS) $(LDFLAGS) $(LDLIBS) openssl_init.c
clean:
	rm -f openssl_init
