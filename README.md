# Oblivion Save Game Sync

Easily sync your **Oblivion Remastered save files** between your **PC** and **OneDrive** (e.g., to play on a Steam Deck and then pick up where you left off on your desktop or Steam Deck).

---

## 📂 What It Does

- 🔁 Two-way sync: Copies save files in both directions (PC ↔ OneDrive).
- 🛡 No deletions: Keeps all your saves safe.
- 🧠 Smart copy: Only newer files overwrite older ones.
- 📝 Logs every sync to a `.txt` file.

---

## 🛠 How to Use

1. Download and run the `OblivionSaveSync.ps1` PowerShell script.
2. It will sync saves between these folders:
   - **Local PC**:  
     `Documents\My Games\Oblivion Remastered\Saved\SaveGames`
   - **OneDrive**:  
     `OneDrive\Documents\My Games\Oblivion Remastered\Saved\SaveGames`

3. Log files are stored here:  
   `OneDrive\Documents\My Games\Oblivion Remastered\Logs`
