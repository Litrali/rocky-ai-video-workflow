# Rocky AI Video Workflow

A public project workspace for planning and producing short animated videos with an **image-first workflow: GPT Image 2 still → human review → Seedance image-to-video**.

## Production workflow

1. Develop the story, scene timing, dialogue, character list, and shot plan.
2. Create one still keyframe per shot or scene with GPT Image 2.
3. Review the still for character identity, continuity, composition, and quality.
4. Approve the still before preparing any video request.
5. Animate the approved still with the currently supported Seedance route.
6. Review the generated clip, record its task ID and result location, then edit/assemble.
7. Keep a final quality-control pass before publishing.

## Project layout

- `characters/` — character designs and continuity sheets.
- `prompts/image-prompts/` — still-image prompt templates.
- `prompts/video-prompts/` — image-to-video prompt templates.
- `docs/` — setup, API workflow, upstream review, production workflow, and continuity standards.
- `examples/` — sample Rocky short-video plan.
- `scripts/` — safe, non-generating helper commands.
- `licenses/` — third-party license text for adapted upstream material.

## Core production standards

- Prefer scene-by-scene planning; a common short format is six scenes of about ten seconds each, adjusted to the story.
- List every character present in every shot and specify screen position, action, and expression.
- Show entrances and exits with a visible origin, route, direction, and destination.
- Describe character motion separately from camera movement.
- Keep character appearance, outfit, props, environment, screen direction, and lighting continuous.
- Use slow motion, speed shifts, time-lapse, motion blur, and peak-moment holds selectively.
- Use the detailed shot specification and prompt templates in `docs/production-workflow.md`.

## Provider and pricing caution

Model names, route availability, inputs, limits, parameters, and prices can change. Check the provider's current documentation and live schema before every run. The upstream guide is a reference, not proof that a route is enabled for a particular account. Image, video, draft, and final-conversion tasks may be separately billable.

This repository does not submit paid generation requests automatically. Review every request and its current estimated cost before any submission. If an account, subscription, API key, or payment is involved, have a parent or guardian review and approve it.

## Upstream reference and attribution

Selected workflow concepts are adapted from [EvoLink-AI/GPT-Image-2-Seedance-2.5-Workflow](https://github.com/Evolink-AI/GPT-Image-2-Seedance-2.5-Workflow). See [upstream review notes](docs/upstream-review.md) and the applicable [Apache License 2.0 text](licenses/EvoLink-APACHE-2.0.txt). Adapted files are identified in the review notes; Rocky-specific material remains distinct.

## Safety and secrets

- Never commit API keys, passwords, session tokens, private account details, or sensitive receipts.
- Keep credentials in a local `.env` file; `.env.example` contains placeholders only.
- Do not enable automatic retries for paid generation requests.
- Do not upload generated media unless you have checked ownership, permissions, and storage needs.
- Treat public repository contents as visible to everyone.

## Start here

1. Read [Setup guide](docs/setup-guide.md).
2. Read [Production workflow](docs/production-workflow.md).
3. Use the [still-image template](prompts/image-prompts/still-image-template.md).
4. Use the [Seedance image-to-video template](prompts/video-prompts/seedance-image-to-video-template.md).
5. Check [API workflow](docs/api-workflow.md) and [upstream review notes](docs/upstream-review.md).
