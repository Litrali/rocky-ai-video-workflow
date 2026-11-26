# Seedance image-to-video prompt template

**Input:** Use only the still image that has passed review and approval. Verify the selected model's live schema before using any example parameters.

## Shot specification

- Shot ID:
- Start / end time:
- Duration:
- Framing:
- Camera position, height, and angle:
- Lens / optical character:
- Camera movement:
- Characters visible:
- Subject action:
- Expression and micro-movements:
- Environment:
- Lighting and color:
- Depth of field:
- Motion / physics:
- Transition:

## Motion prompt

```text
Animate the approved input image while preserving the established character
identity, face, fur, hairstyle, outfit, proportions, props, and scene design.

Subject motion: [describe the action chronologically: beginning, middle, and
end. State direction, route, pace, and small movements. Show entrances and
exits when the story requires them.]

Camera motion: [describe separately; specify locked, tracking, pushing in,
pulling back, panning, tilting, or orbiting.]

Environment motion: [only intended movement, such as fabric, foliage, or light.]

Timing and pacing: [state when each action begins, changes, and ends.]

Keep motion physically coherent and maintain screen direction and continuity.
Do not introduce characters or objects that are not in the approved scene.
```

## Negative prompt

```text
No character redesign, face drift, outfit changes, extra limbs, duplicated
characters, unplanned props, unexplained sudden appearances, inconsistent
scale, flickering, warped anatomy, unintended text, logos, or abrupt
background changes.
```

## Motion choices

Use selectively when the story benefits: cinematic slow motion, speed shift,
time-lapse, fast-forward, speed blur, or a brief peak-moment hold. Describe
character motion separately from camera movement.

## Route reminder

- Use image-to-video for an approved first frame (and optionally a supported last frame).
- Use reference-to-video only when reference assets are needed for character, style, motion, or other guidance.
- Do not assume a storyboard grid guarantees exact panel timing or order.
- Confirm route names, media limits, duration, aspect ratio, and prices from the live schema.

## Before submitting

- [ ] Approved still is the input
- [ ] All story-present characters and their positions are specified
- [ ] Entrances, exits, and movement direction are continuous
- [ ] Current route schema and accepted parameters checked
- [ ] Prompt and negative prompt reviewed
- [ ] Duration and aspect ratio checked
- [ ] Current cost reviewed
- [ ] Parent/guardian approval obtained where payment or account use is involved
- [ ] Explicit approval obtained for this specific task
