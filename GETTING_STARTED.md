<div align="center">

<img src="assets/md-badges.png">
<hr>

# ❔ Getting Started:

There are no extra prerequisites to start using these badges. Simply copy the 'Markdown Code' of the badge that you'd like an paste it into your Markdown file.

Here's an example:

<img src="https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FMQ2PNjxiOlGknJG0UQAJ%2Fuploads%2FSvoE6iNy0teOrlPaWejX%2Fimage.png?alt=media&token=f3fea543-8699-44e2-8730-efcaf2808cc0" alt="Copying" width="550">

    Step 1: Copying the Markdown Code
<br>
<br>

<img src="https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FMQ2PNjxiOlGknJG0UQAJ%2Fuploads%2FQe23lT4SZLeaSJwFx05E%2Fimage.png?alt=media&token=8610925e-c56f-48ff-bee6-64d6ae90075e" alt="Pasting" width="550">
    
    Step 2: Pasting the Markdow into your file.

<br>

#### 💡 Use 'Ctrl + F' or the Table Of Contents to search quickly for your badge. 💡

<hr>

# 🤔 FAQ


### Q: Why won't my badge lead anywhere?

<details>
<summary><strong>View Answer:</strong></summary>
<br>

By default, (mostly) all badges have (#) at the end of their code to define a link.

**You need to replace the (#) with a link that you'd like the badge to go to when clicked on.**

For example, if the code is:

`[![GitHub](https://img.shields.io/badge/GitHub-%23121011.svg?logo=github&logoColor=white)](#)`


...you'll need to replace the (#) with a link (eg. https://github.com/inttter).

If the code is a dynamically updating badge such as this one:

 `[![GitHub release](https://img.shields.io/github/release/saadeghi/daisyui.svg)](https://github.com/badges/shields/releases)`

 <!-- daisyUI is used as an example - https://github.com/saadeghi/daisyui !-->


You must replace 'saadeghi' with your GitHub username/organization, and 'daisyUI' with your repository name. This includes the redirect URL aswell.

</details>

### Q: Can I customize these badges? 

<details>
<summary><strong>View Answer:</strong></summary>
<br>

Yes, please refer to the [Styles](STYLES.md) and [Customization](CUSTOMISING.md) documentations for how to style and customize your badges.

</details>

### Q: Can I use badges on any repository hosting platform? 

<details>
<summary><strong>View Answer:</strong></summary>
<br>

As long as they support Markdown rendering, you can.

If you need more info, consult the help page for your platform.

</details>

### Q: Do these only work in Markdown?

<details>
<summary><strong>View Answer:</strong></summary>
<br>

**No**, you can also use them in HTML, by using `<a>` tags to link to a website, and `<img src>` tags to display the badge. 

Here's how you may format it if you were to link the badge to a website inside of a HTML file:

```html
<a href="https://kotlinlang.org">
    <img src="https://img.shields.io/badge/Kotlin-%237F52FF.svg?logo=kotlin&logoColor=white" alt="Kotlin">
</a>
```

Result: <a href="https://kotlinlang.org">
    <img src="https://img.shields.io/badge/Kotlin-%237F52FF.svg?logo=kotlin&logoColor=white" alt="Kotlin">
</a>

</details>

<hr>