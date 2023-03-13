/*
 * CS:APP Data Lab
 *
 * <Please put your name and userid here>
 *
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 */
extern int printf(const char *, ...);

/* Edit the functions below.  Good luck!  */
// 2
/*
 * implication - given input x and y, which are binary
 * (taking  the values 0 or 1), return x -> y in propositional logic -
 * 0 for false, 1 for true
 *
 * Below is a truth table for x -> y where A is the result
 *
 * |-----------|-----|
 * |  x  |  y  |  A  |
 * |-----------|-----|
 * |  1  |  1  |  1  |
 * |-----------|-----|
 * |  1  |  0  |  0  |
 * |-----------|-----|
 * |  0  |  1  |  1  |
 * |-----------|-----|
 * |  0  |  0  |  1  |
 * |-----------|-----|
 *
 *
 *   Example: implication(1L,1L) = 1L
 *            implication(1L,0L) = 0L
 *   Rating: 2
 */
long implication(long x, long y) {
    return (!x) | y;
}
/*
 * leastBitPos - return a mask that marks the position of the
 *               least significant 1 bit. If x == 0, return 0
 *   Example: leastBitPos(96L) = 0x20L
 *   Rating: 2
 */
long leastBitPos(long x) {
    return x & (~x + 1L);
}
/*
 * distinctNegation - returns 1 if x != -x.
 *     and 0 otherwise
 *   Rating: 2
 */
long distinctNegation(long x) {
    return !(!(x ^ (~x + 1L)));
}
/*
 * fitsBits - return 1 if x can be represented as an
 *  n-bit, two's complement integer.
 *   1 <= n <= 64
 *   Examples: fitsBits(5,3) = 0L, fitsBits(-4,3) = 1L
 *   Rating: 2
 */
long fitsBits(long x, long n) {
    // plan 1
    //  if (x >> 63)
    //      // add to see whether the result >0
    //      return !((x + (1L << (n + ~0))) >> 63);
    //  // mask to see if !=0
    //  return !((~0L << (n + ~0)) & x);

    // plan2
    // return (!!(x >> 63) & !((x + (1L << (n + ~0))) >> 63)) |
    // (!(x >> 63) & !((~0L << (n + ~0)) & x));

    // plan3
    // return (!(x >> 63) & !((~x + (1L << (n + ~0))) >> 63)) |
    //    (!!(x >> 63) & !((x + (1L << (n + ~0))) >> 63));

    // plan4 complete!
    // return !(((x ^ (~(x >> 63))) + (1L << (n + ~0))) >> 63);

    // plan5 best ever
    // x<0 ~x(not ~x+1L,it is important); x>0 x;
    x = ((x >> 63) ^ x);
    return !((~0L << (n + ~0)) & x);
}
/*
 * trueFiveEighths - multiplies by 5/8 rounding toward 0,
 *  avoiding errors due to overflow
 *  Examples:
 *    trueFiveEighths(11L) = 6L
 *    trueFiveEighths(-9L) = -5L
 *    trueFiveEighths(0x3000000000000000L) = 0x1E00000000000000L (no overflow)
 *  Rating: 4
 */
long trueFiveEighths(long x) {
    /*
    x<0 special judge -5-8i,-7-8i
    x>0 special judge 5+8i,7+8i
    */
    // if (x >> 63)
    // return ((x + 1L) >> 1) + ((x + 7L) >> 3) + ~(!((x & 5L) ^ 1L)) + 1L;
    // return ((x >> 1) + (x >> 3) + !((x & (5L)) ^ 5L));
    // return ((((x + 1L) >> 1) + ((x + 7L) >> 3) + ~(!((x & 5L) ^ 1L)) + 1L) & (x >> 63)) +
    //    ((((x >> 1) + (x >> 3) + !((x & (5L)) ^ 5L))) & ~(x >> 63));

    // best ever!
    // mask neg:7L, pos:0L
    long mask = (7L & (x >> 63));
    long y = ((x + mask) >> 3);
    long mod = x + ~(y << 3) + 1L;
    return (y << 2) + y + ((mod + (mod << 2) + mask) >> 3);
}
/*
 * addOK - Determine if can compute x+y without overflow
 *   Example: addOK(0x8000000000000000L,0x8000000000000000L) = 0L,
 *            addOK(0x8000000000000000L,0x7000000000000000L) = 1L,
 *   Rating: 3
 */
long addOK(long x, long y) {
    // if (!(x >> 63) & !(y >> 63))
    //     return !((x + y) >> 63);
    // if ((x >> 63) & (y >> 63))
    //     return !(!((x + y) >> 63));
    // return 1L;
    return !((((x + y) ^ x) & ((x + y) ^ y)) >> 63);
}
/*
 * isPower2 - returns 1 if x is a power of 2, and 0 otherwise
 *   Examples: isPower2(5L) = 0L, isPower2(8L) = 1L, isPower2(0) = 0L
 *   Note that no negative number is a power of 2.
 *   Rating: 3
 */
long isPower2(long x) {
    // if (x >> 63 | !x)
    // return 0;
    // return !(x ^ (x & (~x + 1)));
    return (!(x & (x + ~0))) & !!x & !(x >> 63);
}
/*
 * rotateLeft - Rotate x to the left by n
 *   Can assume that 0 <= n <= 63
 *   Examples:
 *      rotateLeft(0x8765432187654321L,4L) = 0x7654321876543218L
 *   Rating: 3
 */
long rotateLeft(long x, long n) {
    // special judge for 0
    return (((x << n) + (x >> (65L + ~n)) + ((long)!(!(x >> 63)) << n)) & (!n + ~0L)) +
           (x & (!!n + ~0L));
}
// 4
/*
 * isPalindrome - Return 1 if bit pattern in x is equal to its mirror image
 *   Example: isPalindrome(0x6F0F0123c480F0F6L) = 1L
 *   Rating: 4
 */
long isPalindrome(long x) {
    long y = x;
    x = ((x & 0xaaaaaaaaaaaaaaaa) >> 1) | ((x & 0x5555555555555555) << 1);
    x = ((x & 0xcccccccccccccccc) >> 2) | ((x & 0x3333333333333333) << 2);
    x = ((x & 0xf0f0f0f0f0f0f0f0) >> 4) | ((x & 0x0f0f0f0f0f0f0f0f) << 4);
    x = ((x & 0xff00ff00ff00ff00) >> 8) | ((x & 0x00ff00ff00ff00ff) << 8);
    x = ((x & 0xffff0000ffff0000) >> 16) | ((x & 0x0000ffff0000ffff) << 16);
    x = ((x & 0xffffffff00000000) >> 32) | ((x & 0x00000000ffffffff) << 32);
    return !(y ^ x);
}
/*
 * bitParity - returns 1 if x contains an odd number of 0's
 *   Examples: bitParity(5L) = 0L, bitParity(7L) = 1L
 *   Rating: 4
 */
long bitParity(long x) {
    x = x ^ (x >> 32);
    x = x ^ (x >> 16);
    x = x ^ (x >> 8);
    x = x ^ (x >> 4);
    x = x ^ (x >> 2);
    x = x ^ (x >> 1);
    return x & 1L;
}
/*
 * absVal - absolute value of x
 *   Example: absVal(-1) = 1.
 *   You may assume -TMax <= x <= TMax
 *   Rating: 4
 */
long absVal(long x) {
    // if (x >> 63)
    // return ~x + 1;
    // return x;
    return ((x >> 63) ^ x) + ((x >> 63) & 1L);
}
