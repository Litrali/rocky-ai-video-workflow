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

1. Keep still-image generation and video animation as separate stages.
2. Review and approve the still before preparing a video task.
3. Choose a video route based on whether the input is a first frame, references, text, or an existing video.
4. Treat draft-to-final conversion as a separate task with separate cost and an expiry window.
5. Save task IDs and receipts, poll the original task, and avoid duplicate submissions after uncertain responses.
6. Treat storyboard grids as planning/reference material, not as a guarantee of exact panel timing.

## Deliberate project differences

- This repository keeps its existing Rocky-specific folder structure and prompt templates.
- The upstream paid-task helper was not copied. The local `scripts/tasks.sh` only prints preparation guidance and never sends API requests.
- No API keys, generated media, upstream media assets, or bulky files were copied.
- Route names and CLI commands are examples that must be checked against live provider schemas and account availability.
- The upstream guide's product-ad example was adapted into a character-animation workflow; its product prompt was not copied.

## Availability and current API notes

The upstream README describes Seedance 2.5 as available and lists the five main generation/edit/extend routes. The provider's changelog dated 2026-11-16 also describes 4K output on all five Seedance 2.5 generation models and 4K draft conversion. However, a separate official Seedance 2.5 API skill repository still states that the official API pages mark text, image, and reference routes as not yet available. These sources conflict about route availability or rollout status.

Therefore this project makes no blanket availability claim. Before use, check the exact route's current API page, model catalogue, account permissions, and pricing. Do not infer that one working route or a marketing/model page means every route is callable for a given account.

The 4K update is time-sensitive. The changelog says to pass `quality: "4k"` on the five generation/edit/extend routes, while draft conversion accepts `1080p` (default) or `4k`. Confirm the live schema and current rate before relying on these values.

Sources checked:
- [EvoLink API changelog](https://evolink.ai/changelog) — includes the 2026-11-16 Seedance 2.5 4K update.
- [EvoLink Seedance 2.5 API status article](https://evolink.ai/blog/seedance-2-5-api-status) — describes five routes and dated availability history.
- [EvoLink Seedance 2.5 API skill repository](https://github.com/Evolink-AI/seedance-2-5-video-generate-api-skill) — its README carries a caution that official API pages still say some routes are not yet available.

No API schema probe, account login, paid request, or live generation was performed as part of this review.

## Attribution

Workflow concepts are adapted from the upstream repository. The upstream repository identifies its documentation under CC BY 4.0; see its [LICENSE](https://github.com/Evolink-AI/GPT-Image-2-Seedance-2.5-Workflow/blob/main/LICENSE). This file records the source and summarizes the adaptation rather than copying its README or media.
