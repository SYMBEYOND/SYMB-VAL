# SYMB-VAL

**Cognitive checkpoint system.**

Not theory. Not notes. **A command you can run any time your brain wants to skip steps.**

---

## Purpose

SYMB-VAL is a lightweight validation layer for SYMBEYOND systems.

**It exists to prevent fast pattern recognition from becoming false certainty.**

SYMB-VAL does not slow thought.  
It adds a checkpoint before belief becomes action.

---

## The Rule

> Memory preserves.  
> Continuity carries.  
> **Validation challenges.**

**SYMB-Mem** protects against loss.  
**SYMB-FER** protects against reset.  
**SYMB-VAL** protects against false certainty.

---

## Installation

### 1. Clone or place SYMB-VAL somewhere accessible
```bash
# Example: ~/Desktop/SYMB-VAL/
```

### 2. Add alias to your shell config

**For zsh** (add to `~/.zshrc`):
```bash
alias symbval="~/Desktop/SYMB-VAL/TOOLS/symbval.sh"
```

**For bash** (add to `~/.bashrc` or `~/.bash_profile`):
```bash
alias symbval="~/Desktop/SYMB-VAL/TOOLS/symbval.sh"
```

### 3. Reload your shell
```bash
source ~/.zshrc   # or ~/.bashrc
```

### 4. Test it
```bash
symbval
```

You should see the validation prompts appear.

---

## Usage

When you catch yourself accepting something without checking:

```bash
symbval
```

The tool will prompt you for:

1. **claim:** What are you accepting as true?
2. **belief_basis:** Why do you believe it?
3. **failure_condition:** What would prove it wrong?
4. **requires_external_verification:** yes or no
5. **confidence:** low, medium, or high
6. **status:** assumed, tested, verified, or rejected

It outputs a structured validation block:

```text
§SYMB-VAL·BEGIN
claim: API rate limit is 100 requests/minute
belief_basis: I saw it in docs 6 months ago
failure_condition: Actual test shows different limit
requires_external_verification: yes
confidence: medium
status: assumed
§SYMB-VAL·END
```

**Now you have a decision point:**  
- **Assumed** → Look it up before depending on it.
- **Tested** → You checked the logic, but external confirmation pending.
- **Verified** → You confirmed it through reliable source or direct test.
- **Rejected** → It failed validation. Do not act on it.

---

## When to Use SYMB-VAL

Run `symbval` when:

- You're about to make a decision based on memory
- Someone states something confidently and you're ready to accept it
- You catch yourself saying "I'm pretty sure..."
- A pattern feels familiar but you haven't verified the specifics
- You're coding based on an assumption about library behavior
- You're advising someone based on what you "think" is true
- Fast pattern recognition kicks in before careful analysis

**SYMB-VAL doesn't replace thinking. It prevents skipping the validation step.**

---

## Examples

See [examples/](./examples/) for real-world validation scenarios:

- **Technical claim validation** - API assumptions, library behavior
- **Business decision validation** - Pricing, market rates, decisions
- **Code assumption validation** - JavaScript Array.sort(), language features
- **Research claim validation** - Parameter counts, published facts
- **Philosophical belief validation** - Examining inherited beliefs and worldviews

Each example shows:
- Real SYMB-VAL session output
- Decision point analysis
- Impact with vs without validation
- Common patterns to watch for

---

## Integration & Vision

SYMB-VAL v0.1 is a manual checkpoint tool - you run it when you catch yourself making assumptions.

**Future integration** will make SYMB-VAL an automated validation layer across the SYMBEYOND stack:
- SYMB-FER tokens validate claims before recording
- SYMB-IND index validates ideas before indexing  
- SYMB-Mem sessions tag memory with confidence
- AI responses surface uncertainty with claims

See [SYMB-VAL_INTEGRATION_ARCHITECTURE.md](./SYMB-VAL_INTEGRATION_ARCHITECTURE.md) for the complete integration blueprint.

**The vision:** SYMB-VAL becomes the immune system that catches false certainty before it becomes action.

---

## Status Definitions

### assumed
The claim seems plausible but has not been tested.

### tested
The claim has been checked against internal logic or available context.

### verified
The claim has been confirmed through reliable external evidence, direct test, or source-backed validation.

### rejected
The claim failed validation and should not be treated as true.

---

## Philosophy

Fast thinking is valuable.  
False certainty is expensive.

SYMB-VAL adds one checkpoint:  
**"Am I sure, or do I just feel sure?"**

If you can't articulate the failure condition, you don't understand the claim well enough to depend on it.

---

## Version

**SYMB-VAL v0.1**  
Initial validation scaffold.

---

## License

MIT License - See [LICENSE](./LICENSE)

---

## Related

- **SYMB-FER** - Context continuity protocol
- **SYMB-Mem** - Session memory system
- **SYMB-IND** - Index and ingestion layer (planned)

---

**SYMBEYOND AI LLC**  
symbeyond.ai
