# Technical Validation Example

## Scenario
You're about to modify production code based on your memory of how an API works.

---

## Running SYMB-VAL

```bash
$ symbval

claim: The API returns JSON with a 'data' wrapper object
belief_basis: I used this API 3 months ago and remember the structure
failure_condition: Direct API call shows different response structure
requires_external_verification: yes
confidence: medium
status: assumed

§SYMB-VAL·BEGIN
claim: The API returns JSON with a 'data' wrapper object
belief_basis: I used this API 3 months ago and remember the structure
failure_condition: Direct API call shows different response structure
requires_external_verification: yes
confidence: medium
status: assumed
§SYMB-VAL·END
```

---

## Decision Point

**Status: assumed**  
**Confidence: medium**  
**Requires external verification: yes**

### Action
Before writing production code:
1. Check the current API documentation
2. Make a test API call to verify response structure
3. Re-run SYMB-VAL with updated status

---

## After Verification

```bash
$ symbval

claim: The API returns JSON with a 'data' wrapper object
belief_basis: Checked current docs (v2.3) and made test call 2024-05-08
failure_condition: API version changes or different endpoint used
requires_external_verification: no (already verified)
confidence: high
status: verified

§SYMB-VAL·BEGIN
claim: The API returns JSON with a 'data' wrapper object
belief_basis: Checked current docs (v2.3) and made test call 2024-05-08
failure_condition: API version changes or different endpoint used
requires_external_verification: no (already verified)
confidence: high
status: verified
§SYMB-VAL·END
```

**Now you can code with confidence.**

---

## Without SYMB-VAL

You write code based on 3-month-old memory.  
The API changed 2 months ago.  
Your code breaks in production.  
2 hours debugging to find the issue.

## With SYMB-VAL

You catch "assumed" status.  
You verify before coding.  
5 minutes to check docs.  
Code works first time.

**SYMB-VAL saved 115 minutes.**
