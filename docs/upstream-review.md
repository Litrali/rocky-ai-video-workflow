# Upstream workflow review

**Reviewed:** 2026-11-26  
**Upstream repository:** [EvoLink-AI/GPT-Image-2-Seedance-2.5-Workflow](https://github.com/Evolink-AI/GPT-Image-2-Seedance-2.5-Workflow)  
**Default branch inspected:** `main`

## Files reviewed

- `README.md`
- `docs/api-workflow.md`
- `docs/maintenance.md`
- `examples/tasks.sh`
- `.gitignore`

## Useful concepts adapted

1. Keep the still-image generation and video animation as separate stages.
2. Review and approve the still before preparing a video task.
3. Choose a video route based on whether the input is a first frame, references, text, or an existing video.
4. Treat draft-to-final conversion as a separate task with separate cost and an expiry window.
5. Save task IDs and receipts, poll the original task, and avoid duplicate submissions after uncertain responses.
6. Treat storyboard grids as planning/reference material, not as a guarantee of exact panel timing.

## Deliberate project differences

- This repository keeps its existing Rocky-specific folder structure and prompt templates.
- The upstream paid-task helper was not copied. The local `scripts/tasks.sh` only prints preparation guidance and never sends API requests.
- No API keys, generated media, upstream media assets, or bulky files were copied.
- The route names and CLI commands are documented as examples that must be checked against live provider schemas and account availability.
- The upstream guide's product-ad example was adapted into a character-animation workflow; its product prompt was not copied.

## Availability and verification caution

The upstream README describes Seedance 2.5 as available on EvoLink and gives route examples. A separate EvoLink Seedance 2.5 skill page surfaced during this review with a caution that official API pages said some Seedance 2.5 routes were not yet available. These statements may refer to different routes, rollout states, or account access. This repository therefore makes no blanket availability claim: check the live model catalogue, the exact route documentation, and the account before planning a paid task.

No API schema probe, account login, paid request, or live generation was performed as part of this review.

## Attribution

Workflow concepts are adapted from the upstream repository. The upstream repository identifies its documentation under CC BY 4.0; see its [LICENSE](https://github.com/Evolink-AI/GPT-Image-2-Seedance-2.5-Workflow/blob/main/LICENSE). This file records the source and summarizes the adaptation rather than copying its README or media.
