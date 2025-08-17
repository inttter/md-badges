# Contributing to md-badges 

Thank you for taking the time to contribute to md-badges! Before you do, please take a moment to read through the guidelines and the different ways you can contribute.

> Make sure to follow the [Code of Conduct](CODE_OF_CONDUCT.md) when contributing.

## Installing locally

You will need to have a local copy of the repository. To do this, fork the project locally by clicking the **'Fork'** button at the top of the repository to create a fork of md-badges to your GitHub account.

You'll then need to clone it on your local machine. In order to do this, make sure you have [Git](https://git-scm.com) installed, then run the following commands:

```bash
# Replace 'YOUR-USERNAME' with your GitHub username
git clone https://github.com/YOUR-USERNAME/md-badges.git
cd md-badges
```

Once cloned, create a branch to work on your changes by running these commands:

```bash
# Replace '[NAME]' with the name of your branch
git branch [NAME]
git checkout [NAME]
```

You can now start working locally on the project. 

When you decide you are ready to commit your changes, and want to push them to remote, run:

```bash
git add .
git commit -m "✨ feat: [commit message here]"
git push
```

> While not strictly required, it's recommended to follow the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) guidelines for commit messages. If you would like, you could also use [Gitmoji](https://gitmoji.dev) or any other commit emoji spec.

You can now create a [pull request](https://github.com/inttter/md-badges/pulls) to the repository with your changes.

## Adding a badge

> Make sure you have permission from whoever or whatever you are making a badge of to add them here.

If you would like to request a badge, please create a new issue using the [badge request](https://github.com/inttter/md-badges/issues/new?assignees=inttter&labels=%F0%9F%93%9B+badge+request&projects=inttter%2Fmd-badges&template=01-badge-request.yml&title=%5BBadge+Request%5D%3A+) template. You **must** out all available fields. This will help to learn more about what you want added and where it would be relevant.

If you would like to add a new badge yourself, you can **contribute** a new badge by submitting a [pull request](https://github.com/inttter/md-badges/pulls) to the repository. 

When you contribute a new badge, make sure that you have checked for the following:

* Badge is not a **duplicate**
* Badge is in the **correct category**
* Badge is listed in the category in **alphabetical order**
* Badge image appears **without any issues**
* Badges' Markdown code works **without any issues**
* Badge has a **valid logo/icon**[^1]
* Badge follows the **correct format**

It would also help to include the issue(s) that the pull request closes if there is an [existing badge request](https://github.com/inttter/md-badges/issues?q=is%3Aissue%20state%3Aopen%20label%3A%22%F0%9F%99%8F%20badge%20request%22) associated with the badge, but this is not strictly required.

If the category that a badge fits into does not exist in the badge list yet, you can create a new category for it. Ensure that the category is also placed in **alphabetical order** within the [Table of Contents](README.md#table-of-contents) and the badge list itself.

The correct format for inserting badges within a table is as follows:
    
```markdown
| Preview | Markdown Code |
|---------|---------------|
| [![Badge Name](Link)](#) | `[![Badge Name](Link)](#)` |
```

## Reporting an issue

If you encounter something that is wrong or incorrect, please check to see if the problem is not already an [open issue](https://github.com/inttter/md-badges/issues).

If there is no open issue for your problem, [create a new issue](https://github.com/inttter/md-badges/issues/new?assignees=&labels=%F0%9F%90%9B+bug&projects=inttter%2Fmd-badges&template=02-issue-report.yml&title=%5BBug%5D%3A+) using the bug report template. Do your best to fill out each field, preferably in as much detail as possible.

## Questions

If you have any inquiries, would like to ask for help, or have anything else that does not fit within the available templates, feel free to make a [blank issue](https://github.com/inttter/md-badges/issues/new) outside of the templates offered, with the `question` label.

## License

By contributing, you agree that your contributions will be licensed under the [MIT License](LICENSE). Companies, brands, or projects from the badges may have **different licenses**.

[^1]: To display icons on badges, Shields.io uses [SimpleIcons](https://simpleicons.org). If an icon has not been added to SimpleIcons, you can use a tool like [custom-icon-badges](https://custom-icon-badges.demolab.com) to create or use icons with a custom slug.