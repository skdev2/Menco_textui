# Menco_textui

![Version](https://img.shields.io/badge/version-1.0.0-blue)
![GitHub release downloads](https://img.shields.io/github/downloads/Menco-Scripts/Menco_textui/total)

A simple, lightweight FiveM script that displays a customizable text-based UI for button prompts.

![image](https://github.com/user-attachments/assets/785dcbd4-c4f6-4cdc-bd01-46cef24901c8)

---

## 💡 Features

* Display contextual button prompts (e.g., **Open Garage**).
* Easy to use via **exports** or **events**.
* Lightweight and fully customizable.

---

## 🚀 How to Use

You can use **Menco_textui** in two ways: via **Exports** or **Events**.

---

### Using Exports

```lua
exports['Menco_textui']:ShowTextUI(
    key,        -- string: The key to display (e.g., 'F1', 'E', 'G')
    action,     -- string: The action description (e.g., 'Open Garage')
    holdType    -- string: 'Hold button' or 'Press button'
)

-- Example:
exports['Menco_textui']:ShowTextUI('F1', 'Open Garage', 'Hold button')

-- To hide the UI:
exports['Menco_textui']:HideTextUI()
```

---

### Using Events

```lua
TriggerEvent('Menco_textui:ShowTextUI',
    key,        -- string: The key to display
    action,     -- string: The action description
    holdType    -- string: 'Hold button' or 'Press button'
)


-- Example:
TriggerEvent('Menco_textui:ShowTextUI', 'F1', 'Open Garage', 'Hold button')

-- To hide the UI:
TriggerEvent('Menco_textui:HideTextUI')
```
