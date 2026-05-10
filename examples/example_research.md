# Research Claim Validation Example

## Scenario
You're about to cite a "fact" you remember reading in an article.

---

## Running SYMB-VAL

```bash
$ symbval

claim: GPT-4 has 1.76 trillion parameters
belief_basis: I remember seeing this number in a tech article last year
failure_condition: OpenAI never published official parameter count, number is speculation
requires_external_verification: yes
confidence: medium
status: assumed

§SYMB-VAL·BEGIN
claim: GPT-4 has 1.76 trillion parameters
belief_basis: I remember seeing this number in a tech article last year
failure_basis: OpenAI never published official parameter count, number is speculation
requires_external_verification: yes
confidence: medium
status: assumed
§SYMB-VAL·END
```

---

## Verification Attempt

**Check 1:** OpenAI's official GPT-4 technical report  
**Result:** Parameter count not disclosed

**Check 2:** Reliable tech publications  
**Result:** Various speculation (1.7T, 1.8T, "larger than GPT-3") - no consensus

**Check 3:** Direct OpenAI statements  
**Result:** "We are not disclosing the architecture (including model size)"

---

## Re-running After Research

```bash
$ symbval

claim: OpenAI has not publicly disclosed GPT-4's parameter count
belief_basis: Checked official technical report (March 2023), CEO interviews, no official count published
failure_condition: OpenAI publishes official parameter count
requires_external_verification: no (verified absence of official data)
confidence: high
status: verified

§SYMB-VAL·BEGIN
claim: OpenAI has not publicly disclosed GPT-4's parameter count
belief_basis: Checked official technical report (March 2023), CEO interviews, no official count published
failure_condition: OpenAI publishes official parameter count
requires_external_verification: no (verified absence of official data)
confidence: high
status: verified
§SYMB-VAL·END
```

---

## Corrected Statement

### Before SYMB-VAL
> "GPT-4 has 1.76 trillion parameters, making it significantly larger than GPT-3."

**Problem:** Stated speculation as fact, no source backing.

### After SYMB-VAL
> "While OpenAI hasn't disclosed GPT-4's parameter count, various analyses suggest it's larger than GPT-3's 175 billion parameters. Some reports speculate around 1.7 trillion, but this remains unconfirmed."

**Better:** Accurately represents uncertainty, distinguishes fact from speculation.

---

## Impact

### Without SYMB-VAL
You cite "1.76 trillion" as fact.  
Someone asks for your source.  
You can't provide one (it doesn't exist).  
Your credibility takes a hit.

### With SYMB-VAL
You caught "assumed" + "requires verification".  
You researched before stating.  
You accurately represented the uncertainty.  
Your credibility intact.

**SYMB-VAL protected your professional reputation.**

---

## Research Validation Pattern

When you're about to state something as fact:

1. Run `symbval`
2. If status is "assumed", stop
3. Find the primary source
4. If primary source doesn't exist, change the claim to reflect uncertainty
5. Re-run `symbval` with verified information

---

## Red Flags in Research Claims

- "I remember reading..."
- "Studies show..." (which studies?)
- "Experts say..." (which experts?)
- "It's been proven..." (where?)
- "Everyone knows..." (source?)

**If you can't link to the primary source, it's assumed, not verified.**

---

## The Standard

### Assumed
No source, relying on memory or hearsay.

### Tested
Checked secondary sources (articles, summaries).

### Verified
Found and read the primary source (paper, official statement, original data).

### Rejected
Primary source contradicts the claim or doesn't exist.

---

**SYMB-VAL doesn't make you slower.**  
**It makes you more careful about what you claim as true.**
