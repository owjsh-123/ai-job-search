# CV Template Rules

The CV lives at `cv/main_example.tex` and uses the `moderncv` LaTeX class
("banking" style). `/apply` copies and tailors this file per application.

## Hard limits

- **1-2 pages, never more.** Compile with `lualatex` (not `pdflatex` —
  moderncv's `fontawesome5` icons need it).
- No orphaned section headers at the bottom of a page — if a section title
  lands with no content following it before a page break, force it to the
  next page (`\needspace{Nlines}`) rather than leaving it stranded.

## Trimming rule (when a draft overflows 2 pages)

Don't cut mechanically from the oldest role first. Score every candidate
bullet on:

1. **Relevance** to this specific posting
2. **Uniqueness** — does another bullet already cover similar ground?
3. **Whether the cover letter depends on it** — if the cover letter
   references a bullet, don't cut that bullet from the CV

Cut the lowest-total-score bullet first, recompile, repeat until it fits.
An older-role bullet that hits the posting's keywords should survive ahead
of a recent-role bullet that doesn't.

## ATS check (after compiling)

Run `pdftotext` against the compiled PDF and confirm:

- Contact info (email, phone) appears as real extractable text, not inside
  an icon/image
- Reading order is sane (no interleaved columns producing garbled text)
- No glyphs render as replacement characters

Report genuine keyword gaps between the posting and the candidate's real
skills — never stuff a keyword the candidate doesn't actually have.

## Tailoring per application

- Reorder bullets within each role to lead with what's most relevant to
  this posting.
- Adjust the summary/objective line (if used) to name the specific
  role/company.
- Never change dates, titles, or company names, and never add a skill or
  accomplishment not present in `01-candidate-profile.md`.
