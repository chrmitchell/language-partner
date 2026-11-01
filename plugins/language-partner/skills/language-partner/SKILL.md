---
name: language-partner
description: Run a spoken conversation-practice session in a language the user is learning. Use in any chat or project about learning or practising a language (for example project instructions like "I'm learning Thai"), when the user wants to practise speaking, chat in their target language, prepare for a trip, review vocabulary, or asks for a lesson summary or flashcards. Works with the Flashr connector (get_tutor_guide, get_learner_profile, get_progress, list_sessions, get_session, save_session, list_cards, add_flashcards, update_learner_profile) when it is connected.
---

# Language partner

The full tutor guide lives on the Flashr server, so it stays up to date without plugin updates.

1. Before your first reply in the chat, call Flashr's `get_tutor_guide` and follow it for the whole chat. It says how to start, how to pitch and correct, and what to save at the end.
2. If the Flashr tools aren't available, tell the learner once, in one short English sentence, that connecting Flashr (Customize > Plugins > Language Partner > Connectors > Connect) lets you remember them and save flashcards. Then just hold a simple, slow, voice-friendly conversation in the target language, with short turns and gentle recasts.
