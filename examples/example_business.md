# Business Decision Validation Example

## Scenario
You're about to quote a price to a client based on your "sense" of market rates.

---

## Running SYMB-VAL

```bash
$ symbval

claim: $125/hour is competitive for AI consulting in this market
belief_basis: That's what I charged my first client and they accepted
failure_condition: Market research shows rates are actually $150-$200/hour
requires_external_verification: yes
confidence: low
status: assumed

§SYMB-VAL·BEGIN
claim: $125/hour is competitive for AI consulting in this market
belief_basis: That's what I charged my first client and they accepted
failure_condition: Market research shows rates are actually $150-$200/hour
requires_external_verification: yes
confidence: low
status: assumed
§SYMB-VAL·END
```

---

## Decision Point

**Status: assumed**  
**Confidence: low**  
**Requires external verification: yes**

### Red Flags
- Belief basis: Sample size of 1
- Confidence: Low (you know it's uncertain)
- No market research backing the claim

### Action Before Quoting
1. Check 3-5 comparable consultants' published rates
2. Ask in professional networks (LinkedIn, BNI)
3. Factor in your credentials vs market average
4. Re-run SYMB-VAL with research

---

## After Research

```bash
$ symbval

claim: $150/hour is appropriate for my AI consulting with 15 years IT experience
belief_basis: Market research: 5 local consultants charge $125-$200, avg $162. My credentials justify mid-range.
failure_condition: Client budget constraints or enterprise clients expecting lower rates for volume
requires_external_verification: no (already researched)
confidence: high
status: verified

§SYMB-VAL·BEGIN
claim: $150/hour is appropriate for my AI consulting with 15 years IT experience
belief_basis: Market research: 5 local consultants charge $125-$200, avg $162. My credentials justify mid-range.
failure_condition: Client budget constraints or enterprise clients expecting lower rates for volume
requires_external_verification: no (already researched)
confidence: high
status: verified
§SYMB-VAL·END
```

**Now you can quote with confidence and justification.**

---

## Impact

### Without SYMB-VAL
You quote $125/hour based on one data point.  
You're undercharging by $25/hour.  
Over 100 billable hours: **$2,500 left on the table.**

### With SYMB-VAL
You caught "assumed" + "low confidence".  
You researched before quoting.  
You quoted $150/hour with market backing.  
Client accepted (because it's fair market rate).

**SYMB-VAL protected $2,500 in revenue.**

---

## Key Lesson

**"I'm pretty sure" is not a pricing strategy.**

If you can't articulate the failure condition or basis, you don't know enough to make the decision.

SYMB-VAL forces the research step before the commitment.
