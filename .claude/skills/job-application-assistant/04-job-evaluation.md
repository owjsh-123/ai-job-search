# Job Evaluation Rubric

Used by `/scrape`, `/rank`, and `/apply` to score fit. Score each dimension
1-5, unless a dimension is marked as a hard gate below.

## Dimensions

1. **Skills match (1-5).** How much of the posting's required/preferred
   skills does the candidate actually have, per `01-candidate-profile.md`?
   A skill the candidate doesn't have is a gap to name, never something to
   quietly assume.
2. **Career alignment (1-5).** Does this move the candidate toward their
   stated target roles/industries, or sideways/backwards?
3. **Location/remote (1-5).** Match against the candidate's stated
   preference. On-site when the candidate is remote-only is a hard
   deal-breaker (see below), not just a low score.
4. **Compensation (1-5).** If salary is listed, compare to the candidate's
   target range. If unlisted, score neutral (3) and flag it as unknown
   rather than guessing.
5. **Culture / deal-breakers (1-5).** Scan the posting for anything
   matching the candidate's stated deal-breakers (on-call, unpaid take-home
   tests over their stated limit, etc.).

## Hard gates (auto-reject or flag, don't just lower the score)

- **Work authorization gate.** If the posting explicitly states it cannot
  sponsor and the candidate needs sponsorship, reject and say so plainly.
- **Explicit deal-breaker violation.** If a deal-breaker from
  `01-candidate-profile.md` is directly violated (e.g. "must be on-site 5
  days/week" against a remote-only candidate), reject rather than scoring
  low — the candidate shouldn't have to read past a fit score to see a
  disqualifier.
- **Borderline cases get flagged, not silently dropped.** E.g. a posting
  asking for "5+ years" against a candidate with 4 is a flag with
  reasoning, not an auto-reject.

## Output format

For each posting: overall fit score (average of the five 1-5 dimensions,
or "REJECTED — <reason>" if a hard gate triggered), plus 1-2 sentences
naming the strongest match and the most real gap. Never present a score
without at least one concrete gap or risk if one exists — an all-positive
summary on an imperfect match reads as dishonest.
