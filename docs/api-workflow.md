# API workflow notes

These notes summarize the supplied workflow guide. Verify all endpoints, model identifiers, request fields, authentication rules, and prices against the provider's current documentation before use.

## Two-stage pipeline

### Stage A — GPT Image 2 still

1. Finalize the scene and character description.
2. Inspect the current GPT Image 2 schema.
3. Prepare the request and review its prompt and cost.
4. Obtain explicit approval for the paid task.
5. Submit once, record the task ID and response, and retrieve the result.
6. Review the still before continuing.

### Stage B — Seedance 2.5 image-to-video

1. Start from the approved still only.
2. Inspect the current `seedance-2.5-image-to-video` schema.
3. Confirm the approved image URL/input, aspect ratio, duration, and motion prompt are supported.
4. Review the full request and current price.
5. Obtain explicit approval for this separate paid task.
6. Submit once, record the task ID, poll that same task, and save the resulting clip.

The supplied guide demonstrates an adaptive aspect-ratio setting for the approved first-frame image. Do not assume it remains supported; confirm it in the live schema.

## API shape shown in the supplied guide

The guide illustrates an EvoLink API base of `https://api.evolink.ai/v1`, generation paths under `/images/generations` and `/videos/generations`, and task retrieval at `/tasks/{task_id}`.

Treat these as guide-derived examples, not a guarantee of the current API. Confirm the provider's current API reference before making requests.

## Reliable task handling

- Save the exact request, response, task ID, and timestamp in a private receipt directory.
- Poll the original task ID until a terminal state.
- Resume polling an existing task rather than submitting a duplicate.
- Never automatically retry a generation POST after a timeout or uncertain response. First check whether the original task was created.
- Download result media only from the returned result location and follow the provider's current download instructions.
- Never log bearer tokens or commit receipts containing sensitive URLs or account data.

## Human approval checklist

Before each paid submission, confirm:

- [ ] Correct model and current schema
- [ ] Prompt and input image reviewed
- [ ] Duration, aspect ratio, and other parameters checked
- [ ] Current estimated price understood
- [ ] Parent/guardian approval obtained where payment or account use is involved
- [ ] Explicit approval given for this specific task

This repository intentionally does not submit generation requests automatically.
