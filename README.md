# Objective-C Unrecognized Selector Crash using performSelector:withObject:afterDelay:

This repository demonstrates a common Objective-C error: an unrecognized selector exception thrown by `performSelector:withObject:afterDelay:`.  The code includes a bug and a solution.  This is particularly tricky because the crash might not happen immediately, but rather after a delay.

## Bug
The `bug.m` file contains code that attempts to call a non-existent selector after a delay using `performSelector:withObject:afterDelay:`. This results in a crash when the delayed selector is invoked.

## Solution
The `bugSolution.m` file provides a corrected version. Before calling `performSelector:withObject:afterDelay:` it adds a check to ensure the selector exists, preventing the crash.

## How to reproduce
1. Clone this repository
2. Open the project in Xcode
3. Run the `bug.m` version, observe the crash.
4. Run the `bugSolution.m` version, observe it runs without crashing.