# Code Assumption Validation Example

## Scenario
You're about to refactor code based on what you "think" a library does.

---

## Running SYMB-VAL

```bash
$ symbval

claim: Array.sort() in JavaScript sorts numbers correctly by default
belief_basis: It's a sorting function, so it must sort numbers numerically
failure_condition: Test shows [1, 10, 2, 20].sort() returns [1, 10, 2, 20] not [1, 2, 10, 20]
requires_external_verification: yes
confidence: medium
status: assumed

§SYMB-VAL·BEGIN
claim: Array.sort() in JavaScript sorts numbers correctly by default
belief_basis: It's a sorting function, so it must sort numbers numerically
failure_condition: Test shows [1, 10, 2, 20].sort() returns [1, 10, 2, 20] not [1, 2, 10, 20]
requires_external_verification: yes
confidence: medium
status: assumed
§SYMB-VAL·END
```

---

## Testing the Failure Condition

```javascript
const numbers = [1, 10, 2, 20];
console.log(numbers.sort());
// Output: [1, 10, 2, 20]  ← NOT numerically sorted!
```

**The failure condition occurred. The claim is FALSE.**

---

## Re-running with Reality

```bash
$ symbval

claim: Array.sort() in JavaScript converts to strings and sorts lexicographically by default
belief_basis: Direct test showed [1, 10, 2, 20].sort() = [1, 10, 2, 20]. MDN docs confirm string conversion.
failure_condition: None - this is documented behavior
requires_external_verification: no (tested + documented)
confidence: high
status: verified

§SYMB-VAL·BEGIN
claim: Array.sort() in JavaScript converts to strings and sorts lexicographically by default
belief_basis: Direct test showed [1, 10, 2, 20].sort() = [1, 10, 2, 20]. MDN docs confirm string conversion.
failure_condition: None - this is documented behavior
requires_external_verification: no (tested + documented)
confidence: high
status: verified
§SYMB-VAL·END
```

---

## Correct Code

Now you know to use a compare function:

```javascript
const numbers = [1, 10, 2, 20];
console.log(numbers.sort((a, b) => a - b));
// Output: [1, 2, 10, 20]  ← Correctly sorted!
```

---

## Impact

### Without SYMB-VAL
You refactor code assuming `.sort()` works numerically.  
You ship the bug to production.  
User reports incorrect ordering.  
30 minutes debugging + hotfix deploy.

### With SYMB-VAL
You caught "assumed" status.  
You wrote 1 test line before refactoring.  
You discovered the truth in 30 seconds.  
You wrote correct code the first time.

**SYMB-VAL prevented a production bug.**

---

## The Pattern

**Anytime you think "I'm pretty sure this library does X":**

1. Run `symbval`
2. See "assumed" status
3. Write 1 test line
4. Verify before depending on it

**2 minutes of validation beats 30 minutes of debugging.**

---

## Common Code Assumptions to Validate

- Default function behavior
- Library version changes
- Browser API compatibility
- Async/await error handling
- Type coercion rules
- Regex escape sequences
- Date/time zone handling
- Framework lifecycle hooks

**If you haven't tested it in THIS codebase, it's assumed, not verified.**
