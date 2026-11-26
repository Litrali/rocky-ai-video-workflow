# Rocky AI Video Workflow

A private project workspace for planning short animated videos with a **GPT Image 2 → review → Seedance image-to-video** workflow.

## Core workflow

1. Write the scene, character, and shot plan.
2. Generate a still image with GPT Image 2.
3. Review the still for composition, character continuity, and visual quality.
4. Get explicit approval before any paid generation.
5. Animate only the approved still with the selected Seedance route.
6. Review the clip, record the task ID and output location, and revise deliberately.

> Model names, route availability, inputs, and prices can change. Check the provider's live model schema, availability, and pricing before every run. The upstream guide is a reference, not proof that a model is enabled for your account. This repository does not contain API keys and does not run paid generation automatically.

## Upstream reference

This project adapts selected workflow concepts from [EvoLink-AI/GPT-Image-2-Seedance-2.5-Workflow](https://github.com/Evolink-AI/GPT-Image-2-Seedance-2.5-Workflow). See [upstream review notes](docs/upstream-review.md) for what was reviewed and what was intentionally not copied.

The upstream guide describes:
- GPT Image 2 still generation followed by a human review gate.
- Seedance image-to-video for an approved first frame.
- Separate text-to-video, reference-to-video, video-edit, and video-extend routes for different input types.
- An optional 480p draft → separately billed 1080p conversion path.
- Task-ID-based polling, result downloads, and avoiding duplicate paid submissions.

These are route concepts, not a guarantee of current access or supported parameters. Confirm the live schema for the selected model before preparing a request.

## Project layout

- `characters/` — character design and continuity notes.
- `prompts/image-prompts/` — still-image prompt templates.
- `prompts/video-prompts/` — image-to-video prompt templates.
- `docs/` — setup, API workflow, and upstream review notes.
- `examples/` — a sample Rocky short-video plan.
- `scripts/` — safe, non-generating helper commands.

## Quick start

See [Setup guide](docs/setup-guide.md), [API workflow](docs/api-workflow.md), and [upstream review notes](docs/upstream-review.md).

For paid services, subscriptions, or API usage, involve a parent or guardian and obtain their approval before spending money or sharing account details.

## Safety and secrets

- Never commit API keys, passwords, session tokens, or private media.
- Keep credentials in a local `.env` file; `.env.example` contains placeholders only.
- Do not enable automatic retries for paid generation requests.
- Keep generation manual: inspect the prompt, model, parameters, availability, and price, then approve each paid task explicitly.
