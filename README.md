# Zettelmin
A minimal, pre-configured personal knowledge management system (PKMS), built with [Obsidian](https://obsidian.md/) using the [[Zettelkasten]] philosophy.

🌟 **_If you jot down scattered notes, tasks, and lists that get forgotten over time, this is for you (even if you're not a developer)._** 🌟

❗ **_This README is written to be viewed in Obsidian so relative links will work_**

# Overview
This system is meant to be a minimal implementation of [[Zettelkasten]] and [[Evergreen Notes]] principles. The README mostly follows these principles and is meant to kick-start a seamless approach to notetaking and [[personal knowledge management]].

If you’d like to do a deep dive, read  [[How to Take Smart Notes]] by [[@Sönke Ahrens]].

# Requirements
- [Obsidian](https://obsidian.md/)
- [git](https://git-scm.com/)
	- If you're not a developer, you can download a zip file on GitHub by clicking **Code** ⬇ **Download ZIP Archive**

# Installation
On a desktop computer:
- Clone (or download) this repository where you want your notes to live
- Rename the folder to personalize (e.g. "\<Your Name\>'s Vault")
- Open Obsidian
- Open this root directory as a new vault (disable Safe Mode when prompted, required for community plugins)

# How to Use
1. Open the [[Daily Notes Page]]
2. Click the Edit/Preview toggle in the top right (or `Cmd+E`) to render (edit mode is markdown format, similar to [Confluence](https://confluence.atlassian.com/))
3. Click "Create Note" whenever you want to take a note. See [[Creating Notes]] and [[Syncing Vaults Across Devices]].
4. Within 1-2 days, come back and review your [[Notes Inbox|notes inbox]]. See [[Reviewing Notes]].
5. Over time, the structure of your notes will form naturally. Use the graph view icon to the left to see what your “second brain” looks like as your notes grow.

# Configuration and plugins
This template comes pre-configured, but you can reproduce the configuration with these steps:
- [[Configure obsidian settings]]
- [[Configure the minimum required plugins]]

# Developers
If you'd like to contribute core functionality (or track your own base template), use the `.scripts/extract_template.sh` bash script to extract core components that you might have changed. Only files with a [[README]] tag will be copied over.

Note that the script disables `vim` bindings, which I use, but you can reenable them in Settings ▶ Editor.
