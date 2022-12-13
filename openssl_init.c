#include <openssl/ssl.h>
#include <stdio.h>

int main() {
	printf("Initializing OpenSSL...\n");
	OPENSSL_init_ssl(0, NULL);
	printf("Uninitializing OpenSSL...\n");
	OPENSSL_cleanup();
	printf("Done.\n");
	return 0;
}
