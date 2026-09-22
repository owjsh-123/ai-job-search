# Setup

## Prerequisites

- **Claude Code**, installed and working (`claude` on your PATH). Requires
  a Claude Pro/Max/Team subscription or Anthropic API credits.
- **A LaTeX distribution** with `lualatex` and `xelatex`:
  - macOS: [MacTeX](https://tug.org/mactex/) (or the smaller `BasicTeX` +
    `sudo tlmgr install moderncv fontawesome5 fontspec`)
  - Windows: [MiKTeX](https://miktex.org/) — let it auto-install missing
    packages on first compile, or run
    `mpm --install=moderncv --install=fontawesome5`
  - Linux: `sudo apt install texlive-full` (or the smaller
    `texlive-latex-extra texlive-fonts-extra` if you want to trim it down)
- **`pdftotext`** (optional, used for the ATS check in `/apply`):
  - macOS: `brew install poppler`
  - Debian/Ubuntu: `sudo apt install poppler-utils`
  - Windows: `choco install poppler`
  - If unavailable, `/apply` falls back to a visual keyword review instead
    of failing.

## First run

```bash
cd ai-job-search
claude
```

Then inside Claude Code:

Answer the onboarding questions, or drop your CV/LinkedIn export into
`documents/` first (see `documents/README.md`) so `/setup` reads them
instead of asking from scratch.

## Test the LaTeX templates compile

Before your first `/apply` run, confirm the templates build on your
machine:

```bash
cd cv && lualatex main_example.tex && cd ..
cd cover_letters && xelatex cover_example.tex && cd ..
```

Both should produce a PDF with no errors. If `moderncv` or `fontawesome5`
is missing, install it via your LaTeX distribution's package manager (see
above) — `pdflatex` will *not* work for the CV; it must be `lualatex`.

## Customizing

- **Writing style, evaluation rubric, templates:** edit the files in
  `.claude/skills/job-application-assistant/` directly, or re-run
  `/setup --section <name>` for the relevant piece.
- **Search queries:** `/setup --section search` re-runs just the job
  search configuration questions.
- **CV/cover letter look:** edit `cv/main_example.tex` /
  `cover_letters/cover_example.tex` and `cover.cls` directly — they're
  plain LaTeX, no generator step required.
