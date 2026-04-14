[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

---

# Claude Skills Collection

A personal collection of custom skills for [Claude.ai](https://claude.ai), built to make AI assistance more contextual, expert-level, and tailored to specific workflows.

## What are Claude Skills?

Claude Skills are installable knowledge modules that give Claude deep, persistent context for a specific domain — without you having to re-explain your setup, preferences, or background every conversation.

Each skill is a `.skill` file you upload to Claude once. From then on, Claude automatically applies it when relevant.

## Skills

### 🎹 [music-producer-advisor](./music-producer-advisor/)

An expert DAWless music production advisor tailored to a hardware-based setup (Teenage Engineering OP-Z, EP-40, Roland J-6, Arturia KeyStep 37).

Covers:
- Beating blank-slate paralysis — structured starting seeds for any mood or idea
- Music theory translated into practical steps (chord progressions, scales, drum patterns)
- Genre templates: Synthwave, Techno/House, Ambient, Lo-fi Hip-hop
- Gear-specific workflow translation
- Trend and virality notes per genre and platform

**Best for:** Novice-to-intermediate DAWless producers who want actionable guidance without re-explaining their setup every time.

---

*More skills coming as workflows develop.*

## How to Install a Skill

1. Download the `.skill` file from the skill's folder
2. Go to [claude.ai](https://claude.ai) → Settings → Skills (or Profile → Skills)
3. Upload the `.skill` file
4. Start a new conversation — Claude will automatically use the skill when relevant

## Repository Structure

```
/
├── README.md
├── Makefile                      # Build automation
├── skills/
│   └── music-producer-advisor/
│       ├── SKILL.md              # Main skill definition
│       └── references/
│           ├── genres.md         # Per-genre templates and patterns
│           └── trends.md         # Virality and platform notes
└── dist/                         # Built .skill files (git-ignored)
```

## Building Skills

Prerequisites: `make`, `zip`

```bash
# Build all skills into ./dist
make build

# Clean the dist folder
make clean
```

This creates a `.skill` file for each skill folder in `skills/` and places them in `dist/`.

## Contributing / Adapting

These skills are personal and opinionated — they're built around a specific setup and workflow. If you want to adapt one:

- Fork the repo
- Edit `SKILL.md` to reflect your gear, genres, and preferences
- Run `make build` to create the installable `.skill` package
