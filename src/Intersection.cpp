#include "Intersection.h"

int Intersection(int x1, int y1, int x2, int y2, int r1, int r2)
{
    float p = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));
    if (p == 0 && r1 == r2) {
        return 1;
    } else if (p > r1 + r2) {
        return 1;
    } else if (p < abs(r1 - r2)) {
        return 1;
    } else
        return 0;
}
