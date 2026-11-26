# Rocky AI Video Production Workflow

This guide defines the creative planning and review process for Rocky character shorts and other animated stories. It is a project workflow, not a guarantee that a particular provider model or parameter is currently available.

## 1. Video overview

Write a compact overview before creating assets:

- Working title and story premise
- Target platform and aspect ratio (often vertical 9:16; verify output support)
- Target runtime and number of scenes
- Animation treatment (2D, cinematic 3D, or another consistent style)
- Language for narration and dialogue
- Main characters and established designs
- Location, time of day, mood, and visual palette
- Intended ending, reveal, or hook

A common short-form structure is six scenes of approximately ten seconds each. Change the timing when the story needs it; do not force every story into the same duration.

## 2. Story and scene plan

For each scene, record:

- Scene number and exact approximate start/end time
- Story purpose and emotional beat
- Dialogue, narration, and sound effects
- Characters present (explicitly list all of them)
- Location and time
- Beginning, middle, and ending action
- Transition to the next scene

If a character is not meant to appear, explicitly say so. If a character enters, show where they come from and how they reach their final position.

## 3. Shot specification

Use one shot block per shot. Split a scene into multiple shots when the action or framing changes.

### Timing and action

- Start time, end time, and duration
- What happens at the beginning, middle, and end
- Static, continuous, tracking, handheld, or transitioning shot
- Exact moment the camera or subject changes direction
- Important micro-movements and pauses

### Camera and framing

- Camera position, height, distance, angle, and orientation
- Shot size: extreme wide, wide, medium-wide, medium, medium close-up, close-up, or extreme close-up
- Subject placement, headroom, negative space, and foreground/midground/background
- Symmetry, asymmetry, centered framing, or rule of thirds
- Subject size, facing direction, and gaze direction

### Lens and optical character

- Lens character or focal-length look, when relevant
- Perspective and distortion
- Depth of field and focus behavior
- Focus pull or subject isolation
- Avoid inventing a technical lens parameter if the chosen video model does not expose it

### Character and environment

- Every visible character and their screen position
- Appearance, clothing, expression, pose, and gaze
- Character action and route through the frame
- Props and their positions
- Environment motion, weather, particles, fabric, foliage, reflections, or lighting changes

### Lighting, color, and motion

- Key/fill/rim light direction and softness
- Palette and grading (bright, muted, high contrast, warm amber, cool/icy, orange-teal, etc.)
- Subject sharpness, background blur, and vignette where suitable
- Physical weight, speed, momentum, and contact
- Optional slow motion, speed shift, time-lapse, hyper-speed, motion blur, or peak-moment hold
- Transition type and continuity into the next shot

## 4. Character continuity lock

Before generating any scene, compare it with the character sheet.

- Preserve species, face, fur/skin or surface details, eye color, hairstyle, proportions, outfit, accessories, and age presentation.
- Keep each character's identity consistent across all shots.
- List every story-present character and their position in the frame.
- Do not omit a character who is present in the story.
- Do not add a character who is not meant to be in the scene.
- Show entrances and exits: origin (doorway, room, corridor, path), route, direction, pace, and final position.
- Preserve prop ownership and hand positions when relevant.
- Keep screen direction and eyelines consistent across cuts.
- If a character's outfit changes, state the exact scene where the change begins and retain all other identity features.

## 5. Camera movement and character movement are separate

Write two distinct instructions:

**Character movement:** who moves, from where, along which route, in what direction, at what speed, and where they stop.

**Camera movement:** locked shot, pan, tilt, push-in, pullback, tracking, orbit, crane/lift, handheld, or glide. State when the move begins and ends.

Do not use a camera move as a substitute for describing the character's actual action.

## 6. Image-first generation

1. Prepare one still keyframe for the shot.
2. Use the established character sheet and scene details.
3. Check all characters, entrances, composition, background, lighting, and aspect ratio.
4. Review the actual generated still.
5. Correct the still before animation if the design or composition is wrong.
6. Explicitly approve the still before any paid video generation.

Do not assume a storyboard contact sheet is a valid first-frame input. If a single frame is needed, prepare and review that frame separately.

## 7. Image-to-video prompt structure

Use this structure for an approved still:

**VIDEO OVERVIEW:** one-sentence description of the shot and its story purpose.

**SHOT:** timestamp, duration, framing, camera, lens character, visible characters, subject action, expression, environment, lighting, color, focus, motion/physics, and transition.

**POLISHED VIDEO PROMPT:** a chronological description of what changes from the first moment to the last. Preserve the approved image's identity and layout.

**NEGATIVE PROMPT:** prevent unwanted redesign, extra characters, duplicated subjects, warped anatomy, outfit drift, flicker, unwanted text, prop changes, and abrupt background changes.

**GLOBAL CONSISTENCY / CONTINUITY LOCK:** restate the design, outfit, props, environment, screen direction, and character count that must remain stable.

## 8. Optional visual style tags

Use these tags selectively when they suit the scene:

- `/darkframe` — mysterious editorial look
- `/brightframe` — clean commercial style
- `/macroeyes` — intense eye close-up
- `/headtotoe` — full-subject head-to-toe framing
- `/unposed` — natural, candid, unstaged expression

They are prompt shorthand, not guaranteed provider parameters.

## 9. Motion and pacing choices

Choose motion effects for story purpose, not decoration:

- Slow motion or cinematic slow motion for a meaningful reveal
- Speed shift from fast to slow or slow to fast for a change in energy
- Fast-forward or time-lapse for elapsed time
- Hyper-speed movement or speed blur for brief high-energy movement
- Time-stop or a peak-moment hold for a short dramatic pause

State the timing and duration of the effect. Keep subject motion and camera motion separate.

## 10. Dialogue, voice, and sound

- Specify the spoken language and script format (for example, Odia script or Hindi written in Roman letters).
- Keep each line short enough for the shot duration.
- Assign every line to a named speaker.
- Separate dialogue, narration, ambience, and sound effects.
- Note whether the generated clip should be silent or include audio; verify the live route schema.
- Review pronunciation, timing, and speaker assignment in the finished clip.

## 11. Final review checklist

- [ ] Story beat is clear and scene timing makes sense
- [ ] Every intended character is visible and correctly placed
- [ ] No unintended characters or props appear
- [ ] Entrances and exits show a continuous route
- [ ] Character design, outfit, and accessories remain consistent
- [ ] Camera movement and subject movement are specified separately
- [ ] Dialogue and sound match the intended language and timing
- [ ] Still image was reviewed and approved before animation
- [ ] Video clip preserves the approved design and composition
- [ ] No unwanted flicker, deformation, text, or abrupt scene changes
- [ ] Current model route, schema, limits, and price were checked
- [ ] Any paid task has explicit approval before submission

## 12. Publishing handoff

Assemble approved clips in an editor, add titles/subtitles only in the editing stage where possible, balance audio, check the vertical crop on a phone-sized preview, and watch the full export before publishing. Keep source stills, task IDs, and receipts organized locally; do not expose credentials or private account information.
