# Menco_textui

A simple, lightweight FiveM script that displays a customizable text-based UI for button prompts.

---

## 💡 Features

* Display contextual button prompts (e.g., **Press E to Open Garage**).
* Supports both **Hold button** and **Press button** styles.
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