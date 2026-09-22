# AI Job Search (US/Canada edition)

A Claude Code framework that turns Claude into a full-stack job application
assistant: search job boards, score fit, draft a tailored CV + cover letter,
prep for interviews, and track outcomes — all as slash-commands you run from
inside Claude Code.

Built with [Claude Code](https://claude.com/claude-code).

## Quick start

1. Put this folder somewhere on your machine and `cd` into it.
2. Run `claude` to start Claude Code inside the folder.
3. Inside Claude Code, run `/setup` and answer the onboarding questions (or
   point it at a `documents/` folder with your CV/LinkedIn export — see
   `documents/README.md`).
4. Run `/scrape` to search for jobs matching your profile.
5. Run `/apply <url>` on a posting you like, or paste the job description
   directly if the URL won't fetch.
6. Run `/interview` once you land one, and `/outcome` to log results.

See `SETUP.md` for prerequisites (LaTeX, etc.) and `CLAUDE.md` for how the
whole thing is wired together.

## Commands

| Command | What it does |
|---|---|
| `/setup` | Interview you (or read your `documents/` folder) and build your profile |
| `/scrape` | Search job boards for postings matching your profile, score fit |
| `/rank` | Batch-score a list of postings you already have (no fresh search) |
| `/apply <url or text>` | Full drafter → reviewer → compile pipeline for one job |
| `/interview` | Build a prep pack for a scheduled interview |
| `/outcome` | Record what happened to an application |
| `/reset` | Wipe profile data or documents folder and start over |

## File structure

```
ai-job-search/
├── CLAUDE.md                     # Profile + workflow rules (edited by /setup)
├── .claude/
│   ├── commands/                 # The slash-commands above
│   ├── skills/job-application-assistant/
│   │   ├── SKILL.md
│   │   ├── 01-candidate-profile.md
│   │   ├── 02-behavioral-profile.md
│   │   ├── 03-writing-style.md
│   │   ├── 04-job-evaluation.md
│   │   ├── 05-cv-templates.md
│   │   ├── 06-cover-letter-templates.md
│   │   └── 07-interview-prep.md
│   └── settings.json             # Tool permissions
├── cv/main_example.tex           # moderncv LaTeX template
├── cover_letters/                # Matching cover letter LaTeX class
├── documents/                    # Drop your CV PDF, LinkedIn export, etc. here
└── job_search_tracker.csv        # Application tracker
```
