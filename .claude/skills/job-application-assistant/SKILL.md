---
name: job-application-assistant
description: >
  Reference material for the AI Job Search commands (/setup, /scrape,
  /rank, /apply, /interview, /outcome). Read the numbered files in this
  folder for candidate profile data, writing style, evaluation criteria,
  and document templates before drafting anything.
---

# Job Application Assistant

This skill holds the structured data and rules the commands in
`.claude/commands/` depend on. Nothing here should be read as a script to
run — it's reference material.

| File | Purpose |
|---|---|
| `01-candidate-profile.md` | Full CV data: work history, education, skills, search queries |
| `02-behavioral-profile.md` | Working style / self-assessment, feeds interview prep |
| `03-writing-style.md` | Tone and structure rules for CVs, cover letters, and follow-ups |
| `04-job-evaluation.md` | Scoring rubric used by `/scrape`, `/rank`, and `/apply` |
| `05-cv-templates.md` | Rules for filling the LaTeX CV template in `cv/` |
| `06-cover-letter-templates.md` | Rules for filling the LaTeX cover letter template in `cover_letters/` |
| `07-interview-prep.md` | STAR examples and interview framework |

`/setup` populates files 01-02. Files 03-07 ship with sensible defaults and
can be edited directly or regenerated via `/setup --section <name>`.
