# Language Partner

A claude.ai plugin that turns Claude into a voice-first conversation partner for the language you're learning. It keeps turns short and easy to follow by ear, corrects you gently, tells you honestly how you're doing, and picks topics from your own goals. With the Flashr connector it also remembers you between chats (a learner profile per language) and saves each lesson's new words as Flashr flashcards.

## Install

Either:

- **Add the marketplace** (gets updates): in claude.ai go to **Customize > Plugins > Add > Add marketplace** and enter `chrmitchell/language-partner`. Then add **Language Partner** from the list.
- **Upload a zip**: run `./scripts/build-zip.sh`, then go to **Customize > Plugins > Add > Upload plugin** and choose `dist/language-partner-<version>.zip`. Uploaded copies don't update; upload again for a new version.

## Connect Flashr (optional, recommended)

The plugin includes the Flashr connector. After adding the plugin, find **Flashr** under **Customize > Connectors**, click **Connect** and sign in with Google. Use the same Google account in the Flashr app on your phone to review the cards.

Flashr is invite-only for now: your Google account has to be on its list of testers before sign-in works.

Without Flashr the plugin still works as a conversation partner; it just can't remember you or save flashcards. Flashcards only work for languages Flashr supports (currently Spanish, Thai and German).

## Use it

Create one claude.ai Project per language, with one line of project instructions, for example:

> I'm learning Thai.

Open a chat in the project (voice mode works best). The first time, Claude asks you a few questions about your goals and level and saves them. After that, just talk. Say when you're done or ask for a summary, and Claude saves the new words as flashcards and notes the session in your profile. To change how practice works ("correct me more", "less English"), just say so; it's saved to your profile.

## Updates

If you added the marketplace, new versions arrive from this repository. Open the plugin's marketplace in **Customize > Plugins** and select **Check for updates**, or turn on **Sync automatically**. A new version only reaches you when the plugin's `version` changes.

## Data

The plugin itself is instructions plus the Flashr connector address. When Flashr is connected, Claude sends your learner profile text, lesson vocabulary and review queries to the Flashr server at `numeros-sage.vercel.app`, signed in as you.

## For maintainers

- Plugin: `plugins/language-partner/`. Skill: `plugins/language-partner/skills/language-partner/SKILL.md`, with longer material in its `references/` folder.
- Raise `version` in `plugins/language-partner/.claude-plugin/plugin.json` on every release, or users won't receive the change.
- Check with `claude plugin validate .` and `claude plugin validate ./plugins/language-partner`.
