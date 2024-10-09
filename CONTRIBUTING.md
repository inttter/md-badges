# Contributing to md-badges 

Thank you for taking the time to contribute to md-badges! Before you do, please take a moment to read through the guidelines and the different ways you can contribute.

> Make sure to follow the [Contributor Covenant Code of Conduct](CODE_OF_CONDUCT.md) when contributing.

## Installing locally

You will need to have a local copy of the repository. To do this, fork the project locally by clicking the **'Fork'** button at the top of the repository to create a fork of md-badges to your GitHub account.

You'll then need to clone it on your local machine. In order to do this, make sure you have [Git](https://git-scm.com) installed, then run the following commands:

```bash
# Replace 'YOUR-USERNAME' with your GitHub username
git clone https://github.com/YOUR-USERNAME/md-badges.git
cd md-badges
```

Create a branch to work on your changes by funning these commands:

```bash
# Replace '[NAME]' with the name of your branch
git branch [NAME]
git checkout [NAME]
```

You can now start working locally on the project. When you decide you are ready to to commit your changes and push them to remote, run:

```bash
git add .
git commit -m "✨ feat: [commit message here]"
git push
```

> When writing commit messages, make sure to follow the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) guidelines. If you would like, you can use [Gitmoji](https://gitmoji.dev) or any other commit emoji spec for commit emojis.

You can now create a [pull request](https://github.com/inttter/md-badges/pulls) to the repository with your changes.

## Reporting an issue

If you encounter something that is wrong or incorrect, please check to see if the problem is not already an [**open issue**](https://github.com/inttter/md-badges/issues).

If there is no open issue for your problem, [create a new issue](https://github.com/inttter/md-badges/issues/new?assignees=&labels=%F0%9F%90%9B+bug&projects=inttter%2Fmd-badges&template=02-issue-report.yml&title=%5BBug%5D%3A+) using the bug report template. Do your best to fill out each field, preferably in as much detail as possible.

## Adding a badge

> Make sure you have permission from whoever or whatever you are making a badge of to add them here.

If you would like to request a badge, please [create a new issue](https://github.com/inttter/md-badges/issues/new?assignees=inttter&labels=%F0%9F%93%9B+badge+request&projects=inttter%2Fmd-badges&template=01-badge-request.yml&title=%5BBadge+Request%5D%3A+) using the badge request template. You **must** out all available fields. This will help to learn more about what you want added and where it would be relevant.

If you would like to add a new badge yourself, you can **contribute** a new badge by submitting a [pull request](https://github.com/inttter/md-badges/pulls) to the repository. 

When you contribute a new badge, make sure that you have checked for the following:

* Badge is not a **duplicate**
* Badge is in the **correct category**
* Badge is listed in the category in **alphabetical order**
* Badge image appears **without any issues**
* Badge code works **without any issues**
* Badge has a **logo**[^1]
* Badge follows the **correct format**

If the category that a badge fits into does not exist in the badge list yet, you can create a new category for it. Ensure that the category is also placed in **alphabetical order** within the [Table of Contents](README.md#table-of-contents) and the badge list itself.

The correct format for inserting badges within a table is as follows:
    
```markdown
| Preview | Markdown Code |
|---------|---------------|
| [![Badge Name](Link)](#) | `[![Badge Name](Link)](#)` |
```

## Questions

If you have any inquiries, would like to ask for help, or have anything else that does not fit within the available templates, feel free to make a [blank issue](https://github.com/inttter/md-badges/issues/new) outside of the templates offered.

## License

By contributing, you agree that your contributions will be licensed under the **[MIT License](LICENSE)**. Please note that companies, brands, or projects from the badges may have **different licenses**.

[^1]: Shields.io uses [SimpleIcons](https://simpleicons.org) to display logo's on badges. In some cases, a logo may not have been added to SimpleIcons, or may have been removed due to other reasons. In both md-badges and mdbadges-cli, only badges **with valid logo's** are allowed to be added. This is also explained in a visual example in a disclaimer in the [mdbadges-cli Contributing Guidelines](https://github.com/inttter/mdbadges-cli/blob/main/CONTRIBUTING.md#adding-badges).