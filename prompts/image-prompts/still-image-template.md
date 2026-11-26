# GPT Image 2 — still-image prompt template

**Purpose:** Create one reviewable keyframe before any video generation.

## Scene information

- Story / episode:
- Scene and shot:
- Intended aspect ratio:
- Characters present:
- Location and time:
- Story beat:

## Character continuity

Describe each character's established appearance, clothing, expression, screen position, and action. Include entrances/exits and the direction of movement when relevant.

## Composition

Specify shot size, camera height and angle, subject placement, foreground/midground/background, environment, lighting, color treatment, focus, and depth of field.

## Final prompt

```text
Create a cinematic 3D animated still for [scene/shot].
Characters present: [list every character and describe their exact appearance, outfit, position, expression, and action].
Environment: [location, time, important background details].
Composition: [shot size, camera angle/height, framing, subject placement].
Lighting and color: [direction, softness, palette, grading].
Focus: [subject sharpness, depth of field, background treatment].
Continuity: preserve all established character designs and props.
Aspect ratio: [verify supported ratio in the live model schema].
```

## Review before animation

- [ ] All intended characters are visible
- [ ] Character designs and outfits match the continuity sheet
- [ ] Entrance, exit, and movement origins are clear
- [ ] Composition and background match the story
- [ ] No unwanted text, logos, or extra characters
- [ ] Still image explicitly approved
