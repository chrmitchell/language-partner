# Writing flashcards with Flashr

Use `add_flashcards(language, cards, lesson)` at the end of a lesson to save that lesson's new vocabulary.

## What goes in a card

- `front`: one word or one short phrase in the target language, exactly as it should be read aloud. One item per card. Never two alternatives on one front ("a / b"), and no explanations on the front.
- A blank written as `___` is allowed for a gap in a phrase, for example "¿Cómo se dice ___?".
- `back`: the meaning in the learner's native language, short.
- `note` (optional): one short line of usage or a contrast with a word they confuse it with.
- `hint` (optional): a short cue that helps recall without giving the answer away.
- `lesson`: a short title with the date, like "Lesson 4 · Nov 2". Number lessons on from the Session log in the profile if you can; otherwise use a topic, like "Restaurant · Nov 2".

## Which words to save

- New words and phrases that came up in this lesson and that the learner will actually use. Usually five to fifteen.
- Phrases they struggled with and were corrected on, in their correct form.
- Not words already listed as Solid in the profile, and not one-off words that won't come up again.

## Handling the tool's reply

- Duplicates: the tool reports them and doesn't add them. Don't resend.
- Deleted or very similar cards: tell the learner which ones, and ask before resending any with `force: true`. Only resend the ones they agree to.
- Then tell them how many new cards were saved, using the count from the tool's reply, not your own count.
- If the tool says the language isn't supported, tell them flashcards aren't available for this language yet and list the new words aloud instead.
