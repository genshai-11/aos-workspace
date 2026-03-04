# AOS Workspace

Agent Operating System - shared workspace for 7 autonomous agents.

## Agents
| Agent | Domain | Discord Bot |
|-------|--------|-------------|
| master | Architecture & Orchestration | Chủ trại |
| frontend | UI/UX & React | Mặt tiền |
| backend | APIs & Node.js | Hậu cung |
| database | PostgreSQL & Data | Bé Thóc |
| devops | Infrastructure & CI/CD | Ông build |
| qa | Testing & Quality | Bà soi |
| genshai | Strategy & Monetization | Genshai |

## Workflow
1. Agent creates/edits code in `projects/` or `packages/`
2. Agent commits and pushes to a branch
3. GitHub Actions runs CI (lint, test, build)
4. On merge to main → Cloud Build deploys

## Structure
```
projects/       # Full applications (each has its own package.json)
packages/       # Shared libraries and utilities
scripts/        # Build and deployment scripts
docs/           # Architecture decisions and research
.github/        # GitHub Actions workflows
```
