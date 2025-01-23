# Ada Loop Exit Bug
This example demonstrates a potential issue in Ada when exiting a loop early and subsequently accessing the loop counter variable.  The code compiles without error but produces unexpected results.  This is because the loop variable `I` retains its final value after the loop, even though the loop terminated prematurely. If that value is outside of the valid array bounds, this could result in a runtime error.

## How to Reproduce
1. Compile and run the `bug.ada` code.
2. Observe that it may lead to a runtime error or an incorrect result, as the access to `My_Arr(I)` after the loop depends on the final value of `I`, which is not always within the bounds of the array.

## Solution
The solution is provided in `bugSolution.ada`.  It addresses the issue by explicitly checking the validity of `I` before accessing the array element after the loop. 