---
date: {{date}}
---
<span class="center-element">[[Journal/{{date}}]] 🖊 | [[Notes Inbox]] 📥 </span>
	
# Notes 📝
```button
name Create Note
type command
action Create new note
color default
```
# Tasks ✏
*Past*
```tasks
not done
due before {{date}}
priority is above low
```

*Today*
```tasks
not done
due on {{date}}
priority is above low
```

## New (`Cmd+T`)
- [ ] 

## Remaining

```tasks
not done
sort by priority
priority is above low
```

[[Low Priority Tasks]]
## Done Today

```tasks

done on {{date}}

```
# Meeting Notes 🏢
```button
name Create New Meeting Note
type command
action Hotkeys for templates: New file in notes from Meeting Notes
```

```dataview
LIST
FROM #🌲/👥 OR #🌿/👥 OR #🌱/👥
WHERE file.day = date({{date}})
```
___
status: #🌲/🌤