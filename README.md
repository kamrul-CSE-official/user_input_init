# Flutter Text Post App

A simple Flutter app to type and post messages. Features a **dynamic clear icon** and a **Post button** that activates only when there is text.

---

## Features

- TextField with rounded borders.
- Clear (❌) icon appears only when the field is focused and has text.
- Post button disabled when the text field is empty.
- Displays the posted message above the input.
- Automatic UI update while typing.
- Proper cleanup using `dispose()` for controllers and focus node.

---

## How It Works

- `TextEditingController` tracks user input.
- `FocusNode` detects focus to show/hide the clear icon.
- `suffixIcon` or `suffix` is shown conditionally.
- `MaterialButton` is enabled only when text exists.
- `setState()` updates the UI dynamically.

---

## Installation

1. Clone the repo:
   ```bash
   git clone <repository-url>

2. Clone the repo:
    cd <project-folder>




---

If you want, I can also make an **even more minimal one-page version** suitable for GitHub projects. Do you want me to do that?
