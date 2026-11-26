# Image-first AI video workflow

This project uses an image-first production pattern: prepare a still, review it, then choose the appropriate video route. The route names and request fields below are reference notes from the upstream EvoLink workflow guide, not a live API contract. Verify current documentation, model availability, account permissions, inputs, and prices before use.

Upstream reference: [EvoLink-AI/GPT-Image-2-Seedance-2.5-Workflow](https://github.com/Evolink-AI/GPT-Image-2-Seedance-2.5-Workflow).

## 1. Prepare and approve the still

1. Finalize the scene, character design, outfit, pose, camera, and framing.
2. Inspect the current GPT Image 2 schema.
3. Prepare the still-image request and review its prompt, inputs, and estimated cost.
4. Obtain explicit approval for that specific paid image task.
5. Submit once, record the task ID and response, and retrieve the result.
6. Review the actual image: character identity, outfit, composition, unwanted elements, and dimensions.
7. Do not continue to video until the still is approved.

The upstream example uses a single image scene rather than assuming a storyboard grid is a valid first frame. If a storyboard is used for planning, select and prepare the intended frame separately.

## 2. Choose the video route

The upstream guide distinguishes routes by the kind of input. Treat these identifiers as examples to verify against the live model catalogue.

| Intended input or task | Example route | Notes |
| --- | --- | --- |
| One approved first frame, or first and last frames | `seedance-2.5-image-to-video` | Use the reviewed still as the first frame. Confirm current image count and limits. |
| Images, video, or audio used as references | `seedance-2.5-reference-to-video` | Describe each reference's role clearly. A storyboard grid can guide sequence intent, but do not assume exact panel timing or order. |
| Text-only scene description | `seedance-2.5-text-to-video` | Use when no input media is needed. |
| Modify an existing video | `seedance-2.5-video-edit` | Check the current video-input and duration rules. |
| Continue an existing video | `seedance-2.5-video-extend` | Review continuity between the source and generated segment. |
| Convert an eligible completed draft | `seedance-2.5-draft-to-video` | The upstream guide describes a separately billed conversion task; verify eligibility and expiry. |

For this repository's default character-animation workflow, prefer image-to-video only after the source still has been reviewed and approved. Use reference-to-video only when multiple reference assets genuinely help define character, style, or motion.

## 3. Prepare and approve the video request

1. Inspect the live schema for the chosen route.
2. Confirm image/video/audio inputs, dimensions, aspect ratio, duration, output format, and all other accepted parameters.
3. Write subject motion and camera motion separately.
4. Preserve the approved character design, clothing, props, scene layout, and screen direction.
5. Review the full request and current estimated price.
6. Obtain explicit approval for this separate paid task.
7. Submit once and record the task ID and response.

The upstream I2V example uses an adaptive aspect-ratio value for the input image. Do not assume that value—or any other example field—is accepted by the current endpoint without checking the live schema.

## 4. Resolution and optional draft-to-final

The provider's changelog dated 2026-11-16 describes 4K output for the five Seedance 2.5 generation/edit/extend routes using `quality: "4k"`. It also describes draft conversion with `quality: "1080p"` (default) or `"4k"`. These are time-sensitive provider notes, not a substitute for the live schema. 4K has a separate rate; review the current price before choosing it.

The upstream guide also describes an optional 480p draft followed by a separately billed 1080p or 4K conversion. This is not automatically cheaper overall and is not required for the standard workflow.

Before considering draft mode, verify:
- The draft option is currently available for the selected model and account.
- The draft's completion and expiry timestamps.
- The conversion model's current schema and separate price.
- The time needed for review and conversion before expiry.

If draft mode is unavailable or expired, stop and review alternatives. Do not silently switch routes or submit a replacement paid task.

## 5. Task tracking and recovery

- Save the exact request, response, task ID, and timestamp in a private receipt directory.
- Poll the original task ID until a terminal state.
- Resume polling an existing task rather than submitting a duplicate.
- Never automatically retry a generation POST after a timeout or uncertain response. First check whether the original task was created.
- Treat a returned task ID as acceptance, not completion.
- Download media only from the result location returned by the provider and follow current download instructions.
- Save results promptly if result URLs are temporary.
- Never log bearer tokens or commit receipts containing sensitive URLs or account data.

The upstream repository includes a task helper with submission and polling functions. This project intentionally does not copy that paid-submission helper. Its local `scripts/tasks.sh` remains informational and does not send requests.

## 6. Human approval checklist

Before each paid submission, confirm:

- [ ] Correct model and current availability
- [ ] Current schema and accepted inputs checked
- [ ] Prompt and source media reviewed
- [ ] Duration, aspect ratio, and resolution checked
- [ ] Current estimated price understood
- [ ] Parent/guardian approval obtained where payment or account use is involved
- [ ] Explicit approval given for this specific task

This repository intentionally does not submit generation requests automatically.
