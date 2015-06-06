//
// DOUBLE PRECISION MATH LIBRARY
// FOR FLASHFORTH
// IgorM (c) 6.6.2015
// GNU GPL v3

#include <stddef.h>
#include <math.h>

// 4 primitives

double Dadd( double x, double y) {

	return x + y;
}

double Dsub( double x, double y) {

	return x - y;
}

double Dmul( double x, double y) {

	return x * y;
}

double Ddiv( double x, double y) {

	return x / y;
}

// Functions

double Dacos( double x) {

	return acos(x);
}

double Dasin( double x) {

	return asin(x);
}


double Datan( double x) {

	return atan(x);
}

double Datan2( double x, double y) {

	return atan2(x,y);
}

double Dcos( double x) {

	return cos(x);
}

double Dexp( double x) {

	return exp(x);
}

double Dlog10( double x) {

	return log10(x);
}

double Dlog( double x) {

	return log(x);
}

double Dpow( double x, double y) {

	return pow(x,y);
}

double Dsin( double x) {

	return sin(x);
}

double Dsqrt( double x) {

	return sqrt(x);
}

double Dtan( double x) {

	return tan(x);
}
