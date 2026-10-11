# Aspire Copa Board ⚽

**A polished youth soccer tactics board for Charlotte’s U14G Aspire (Copa)** — teal & navy branding, distinct from the Hornets green/gold board. Drag Aspire (teal) and away (rose) players around a properly marked pitch. Draw solid pass arrows, dashed run arrows and wavy dribble arrows, then build a play frame by frame and press ▶ to watch. Coach crib is empty localStorage templates — **no invented schedule, roster, scores, or coach names**. One offline HTML file.

* **Open it:** double-click `dist/aspire-board.html`, or run `./run.sh` → http://127.0.0.1:4282/
* **Best screenshot:** `screenshots/00-best-home.png`

## What it does

* **Formats:** 9v9 and 11v11 primary (U14); optional 7v7. Four formations each. Defaults: 3-2-3 (9v9), 4-3-3 (11v11), 2-3-1 (7v7).
* **Move / Draw / Erase / Undo:** drag players and ball; Pass (solid), Run (dashed teal), Dribble (wavy lilac); eraser + Ctrl+Z.
* **Animate a play:** ＋ Frame copies the board; ▶ plays with eased movement, ghost trails, 0.5×–2× speed.
* **Drill library (8 generic):** Give-and-go, Overlap, Switch of play, Pressing trap, Corner near-post, Goal kick build-out, 3v2 attack, Defend the box — all labelled “Generic example”.
* **Coach crib:** empty templates (session focus, warm-up, drills, cool-down, schedule/logistics) saved in localStorage. Schedule area says “add your own notes”. Venue hint only: St Mary’s HS Annapolis.
* **Save & share:** named plays in localStorage, Export/Import JSON, Save PNG. Everything stays on the device.
* **Layouts:** desktop side panel; phone turns the pitch vertical. Help overlay + keyboard shortcuts.

## Run

```
./run.sh            # build dist/ snapshot, serve on 127.0.0.1:4282
python3 build.py    # offline file only
```

## Files

```
web/index.html, web/app.css, web/app.js   source
build.py                                  → dist/aspire-board.html
server.py                                 127.0.0.1:4282
run.sh                                    build → serve
screenshots/00-best-home.png
```

## Rules

* Every drill is a **generic teaching example**. No real rosters, scores, league rules, or invented kid schedules.
* Private: server binds to **127.0.0.1** only. Snapshot has no CDN, analytics, or network APIs.


---
## Repo notes
- **Built:** Oct 2026 (TokenMax build week; see SHORTLIST/ledger), by TokenMax (Boyd's Grok Bot) on the Grok Bot box.
- **Run:** `./run.sh` (then open the localhost URL it prints).
- Imported from `/workspace/tokenmax/aspire-board` on Oct 23, 2026. node_modules, virtualenvs, logs and files over 20 MB were left out.
