# Setup guide

This project uses the workflow described in the supplied GPT Image 2 × Seedance 2.5 guide. Provider interfaces can change, so treat these steps as a starting point and verify the current documentation before use.

## 1. Prepare your workspace

- Keep this repository private.
- Install a current Node.js release if you plan to use the provider CLI. The supplied guide specifies Node.js 22 or newer; verify the CLI's current requirement.
- Do not put credentials in repository files.

## 2. Optional EvoLink CLI setup

The supplied guide lists these commands:

```bash
npm install -g @evolinkai/cli@latest
evolink auth login
evolink skills install
```

Before installing or signing in, review the provider's current terms, privacy information, and pricing. If an account, subscription, or payment is involved, ask a parent or guardian to review and approve it.

## 3. Inspect live model schemas

The guide lists these schema-inspection commands:

```bash
evolink models schema gpt-image-2 --json
evolink models schema seedance-2.5-image-to-video --json
```

Use the live schema output—not old examples—to confirm required fields, supported aspect ratios, duration limits, image input format, and any other parameters. Check current prices separately before each paid task.

## 4. Use the review gates

**Still-image gate:** create the GPT Image 2 still first. Review the character, outfit, pose, framing, background, and aspect ratio. Do not proceed to video until the still is approved.

**Video gate:** use the approved still as the image input for Seedance 2.5. Review the motion prompt and all settings before submitting.

**Payment gate:** a person must explicitly approve each paid generation after seeing the model, settings, and current estimated cost. No automatic paid submissions or blind retries.

## 5. Keep outputs organized

Store generated files locally in an ignored `outputs/` folder. Keep task IDs and request receipts private. Do not commit generated media unless you have checked ownership, permissions, and repository storage needs.
