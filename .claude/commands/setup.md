---
description: Build or update the candidate profile
---

Onboard the candidate and populate `CLAUDE.md` plus
`.claude/skills/job-application-assistant/01-candidate-profile.md` and
`02-behavioral-profile.md`.

## Steps

1. **Check for existing material.** Look in `documents/` for a CV (PDF or
   `.tex`), a LinkedIn export, diplomas, or reference letters. If anything
   is there, read it first so you don't ask for information already on
   hand.
2. **Fill gaps by asking.** For anything not covered by existing documents,
   ask the candidate directly. Cover at minimum:
   - Contact info and location (city, state/province, remote preference)
   - Work authorization status (this materially changes which postings are
     worth applying to — always capture it)
   - Target roles and industries
   - Full work history: company, title, dates, 3-5 bullet accomplishments
     each, quantified where possible
   - Education
   - Skills, tools, certifications
   - Salary expectations and how firm they are
   - Deal-breakers (on-call, commute, remote-only, visa sponsorship needed,
     union/labor considerations, etc.)
   - Communication/writing style preference (formal, direct, warm — see
     `03-writing-style.md`)
3. **Behavioral profile (optional but recommended).** Ask 3-5 questions
   about how the candidate likes to work (autonomy vs. structure, conflict
   style, what makes a job unbearable vs. great) and summarize into
   `02-behavioral-profile.md`. This feeds `/interview` prep later.
4. **Write the files.** Populate:
   - `CLAUDE.md` — the summary at the top
   - `01-candidate-profile.md` — full structured CV data
   - `02-behavioral-profile.md` — working style summary
5. **Confirm search settings.** Ask what roles/keywords/locations to search
   for by default, and store them in `01-candidate-profile.md` under a
   "Search queries" section. This is what `/scrape` uses.
6. **Idempotent re-runs.** If `CLAUDE.md` already shows a configured
   profile, ask whether the candidate wants to redo the whole thing or run
   a partial update (e.g. "just update search queries" — in that case only
   touch the relevant section).

Never invent details the candidate hasn't provided or that don't appear in
their documents.
