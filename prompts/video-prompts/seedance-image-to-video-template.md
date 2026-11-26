# Seedance 2.5 — image-to-video prompt template

**Input:** Use only the still image that has passed review and approval.

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
Animate the approved input image while preserving the exact character identity,
face, fur, hairstyle, outfit, proportions, props, and scene design.

Subject motion: [describe action in clear chronological order, including
beginning, middle, and end; specify direction, pace, and small movements].

Camera motion: [describe separately; specify whether locked, tracking,
pushing in, pulling back, panning, tilting, or orbiting].

Environment motion: [only intended movement, such as fabric, foliage, or light].

Timing and pacing: [state when each action begins and changes].
Keep motion physically coherent and maintain visual continuity.
Do not introduce new characters, objects, clothing, or scene changes.
```

## Negative prompt

```text
No character redesign, face drift, outfit changes, extra limbs, duplicated
characters, unplanned props, sudden teleporting, inconsistent scale,
flickering, warped anatomy, unintended text, logos, or abrupt background changes.
```

## Motion choices

Use selectively when the story benefits: cinematic slow motion, speed shift,
time-lapse, fast-forward, speed blur, or a brief peak-moment hold. Describe
character motion separately from camera movement.

## Before submitting

- [ ] Approved still is the input
- [ ] Current Seedance schema and accepted parameters checked
- [ ] Prompt and negative prompt reviewed
- [ ] Duration and aspect ratio checked
- [ ] Current cost reviewed and explicit approval obtained
