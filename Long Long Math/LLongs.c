//
// Long Long PRECISION MATH LIBRARY
// FOR FLASHFORTH
// IgorM (c) 6.6.2015
// GNU GPL v3

#include <stddef.h>
#include <math.h>

// 4 primitives

long long int Ladd( long long int x, long long int y) {

	return x + y;
}

long long int Lsub( long long int x, long long int y) {

	return x - y;
}

long long int Lmul( long long int x, long long int y) {

	return x * y;
}

long long int Ldiv( long long int x, long long int y) {

	return x / y;
}

