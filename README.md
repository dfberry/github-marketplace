# GitHub Copilot Plugin Marketplace

This repository defines a minimal first-phase marketplace for GitHub Copilot plugins.

## Goal

Create the smallest useful marketplace that can later grow into a full catalog.

## Phase 1: minimal marketplace

The first phase should include only:

- a single catalog file
- a stable plugin metadata shape
- a way to mark entries as draft or published
- a clear place for future examples and docs

## Minimal catalog fields

- `id`
- `name`
- `description`
- `homepage`
- `status`

## Minimal actions needed later

No GitHub Actions are created in this repo yet. The minimal actions to add later are:

- build the marketplace catalog from source metadata
- validate plugin metadata before publishing
- publish or preview the generated catalog

## Next steps

- add one minimal plugin as an example
- add minimal evals for that plugin
- add minimal docs for submission and review

