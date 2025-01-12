This solution adds a check using `respondsToSelector:` before calling `performSelector:withObject:afterDelay:`. This prevents the crash by only calling the selector if it is valid.

```objectivec
- (void)delayedAction {
    if ([self respondsToSelector:@selector(validSelector)]) {
        [self performSelector:@selector(validSelector) withObject:nil afterDelay:2.0];
    } else {
        NSLog("Selector does not exist");
    }
}

- (void)validSelector {
    NSLog("Valid selector called successfully!");
}
```
This defensive programming technique avoids the crash and handles the case where the selector is not implemented gracefully.