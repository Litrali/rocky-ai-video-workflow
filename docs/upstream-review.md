# Upstream workflow review

**Reviewed:** 2026-11-26  
**Upstream repository:** [EvoLink-AI/GPT-Image-2-Seedance-2.5-Workflow](https://github.com/Evolink-AI/GPT-Image-2-Seedance-2.5-Workflow)  
**Default branch inspected:** `main`

## Files reviewed

- `README.md`
- `docs/api-workflow.md`
- `docs/maintenance.md`
- `examples/tasks.sh`
- `LICENSE`

## Useful concepts adapted

1. Keep still-image generation and video animation as separate stages.
2. Review and approve the still before preparing a video task.
3. Choose a video route based on whether the input is a first frame, references, text, or an existing video.
4. Treat draft-to-final conversion as a separate task with separate cost and an expiry window.
5. Save task IDs and receipts, poll the original task, and avoid duplicate submissions after uncertain responses.
6. Treat storyboard grids as planning/reference material, not as a guarantee of exact panel timing.
7. Keep documentation maintenance separate from claims of live API validation or successful generation.

## Deliberate project differences

- This repository keeps its Rocky-specific folder structure, character sheets, scene continuity rules, and prompt templates.
- The upstream paid-task helper was not copied. The local `scripts/tasks.sh` only prints preparation guidance and never sends API requests.
- No API keys, generated media, upstream media assets, or bulky files were copied.
- Route names, CLI commands, and parameter examples must be checked against live provider schemas and account availability.
- The upstream tutorial is product-photo focused; this project adapts the general image-first workflow to character animation rather than copying product prompts.

## Availability and current API notes

The upstream repository describes multiple Seedance 2.5 routes and a 4K update in its provider changelog. However, route availability and rollout status can differ by endpoint, account, and date. This project makes no blanket availability claim. Before use, check the exact route's current API page, model catalogue, account permissions, input requirements, and pricing.

The upstream API workflow inspected during this review includes an image-first tutorial, optional draft-to-final path, route-selection table, and task recovery guidance. Its parameter values and limits are examples from the upstream documentation, not guaranteed current settings for this project.

No API schema probe, account login, paid request, or live generation was performed as part of this review.

## License and attribution correction

The upstream repository's checked-in `LICENSE` file is **Apache License, Version 2.0** (Copyright 2024 EvoLink AI). An earlier version of this review incorrectly described the license as CC BY 4.0; that statement is corrected here. The license text is included at `licenses/EvoLink-APACHE-2.0.txt` for reference. This project does not copy the upstream media assets or claim ownership of EvoLink's material.

Source: [Upstream LICENSE](https://github.com/Evolink-AI/GPT-Image-2-Seedance-2.5-Workflow/blob/main/LICENSE).
