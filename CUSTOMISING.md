<div align="center">

![logo](assets/md-badges.png)

# Customising Your Badge 🎨

> [!NOTE]
> Please note that all of these badges use `flat` style badges for their examples.
>
> Different styles may use different methods.
>
> Want to change the style of the button? Please see [STYLES.md](STYLES.md) for documentation.


When using Shield.io badges in Markdown, you can modify various aspects such as badge color, text, logos, and styles.

### 1. Changing Badge Color
You can change the badge color by replacing <color> with your desired hexadecimal color code in the badge URL.


For Example: `![Custom Badge](https://img.shields.io/badge/Custom%20Badge-blue?style=flat&logo=github)`

Result: ![Custom Badge](https://img.shields.io/badge/Custom%20Badge-blue?style=flat&logo=github)

#### Replace `blue` with your desired color. Alternitavely, use .svg's, as seen in [markdown-badges](https://github.com/Ileriayo/markdown-badges.).
---

### 2. Modifying Text
Change the text displayed on the badge by altering the text after the badge name in the URL (in this case, its **Some%20Placeholder%20Text**).

For Example: `![Modified Text Badge](https://img.shields.io/badge/Some%20Placeholder%20Text-blue?style=flat&logo=github)`

Result: ![Modified Text Badge](https://img.shields.io/badge/Some%20Placeholder%20Text-blue?style=flat&logo=github)

> [!TIP] Want to split the text? Do this ⬇️:

`![Modified Text Badge](https://img.shields.io/badge/That's%-Placeholder%20Text-blue?style=flat&logo=github)`

Result: ![Modified Text Badge](https://img.shields.io/badge/This%20Was%20Made%20In-Markdown-blue?style=flat&logo=github)

---
### 3. Adding Logos
Include logos on badges by specifying the logo name after the logo= parameter in the badge URL.

For Example (using the Docker logo): `![Logo Badge](https://img.shields.io/badge/Text%20with%20Logo-black?style=flat&logo=docker)`

Result: ![Logo Badge](https://img.shields.io/badge/Text%20with%20Logo-black?style=flat&logo=docker)

Another Example (using the Sass logo): `![Logo Badge](https://img.shields.io/badge/Text%20with%20Logo-purple?style=flat&logo=Twitch)`

Result: ![Logo Badge](https://img.shields.io/badge/Text%20with%20Logo-pink?style=flat&logo=Sass)