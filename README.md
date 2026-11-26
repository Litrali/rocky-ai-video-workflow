# Rocky AI Video Workflow

A private project workspace for planning short animated videos with a **GPT Image 2 → review → Seedance 2.5 image-to-video** workflow.

## Core workflow

1. Write the scene, character, and shot plan.
2. Generate a still image with GPT Image 2.
3. Review the still for composition, character continuity, and visual quality.
4. Get explicit approval before any paid generation.
5. Animate only the approved still with Seedance 2.5.
6. Review the clip, record the task ID and output location, and revise deliberately.

> Model names, inputs, availability, and prices can change. Check the provider's live model schema and pricing before every run. This repository does not contain API keys and does not run paid generation automatically.

## Project layout

- `characters/` — character design and continuity notes.
- `prompts/image-prompts/` — still-image prompt templates.
- `prompts/video-prompts/` — image-to-video prompt templates.
- `docs/` — setup and API workflow notes.
- `examples/` — a sample Rocky short-video plan.
- `scripts/` — safe, non-generating helper commands.

## Quick start

See [Setup guide](docs/setup-guide.md) and [API workflow](docs/api-workflow.md).

For paid services, subscriptions, or API usage, involve a parent or guardian and obtain their approval before spending money or sharing account details.

## Safety and secrets

- Never commit API keys, passwords, session tokens, or private media.
- Keep credentials in a local `.env` file; `.env.example` contains placeholders only.
- Do not enable automatic retries for paid generation requests.
- Keep generation manual: inspect the prompt, model, parameters, and price, then approve each paid task explicitly.
