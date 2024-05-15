# Contributing to md-badges 

Thank you for considering contributing to md-badges! Before you decide to, please take a moment to read through the guidelines and the ways you can contribute.

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

You can now start working locally on the project, and when you are ready to to commit your changes and push them to remote, run:

```bash
git add .
git checkout -m "✨ feat: [commit message here]"
git push
```

> When writing commit messages, make sure to follow the [Convential Commits](https://www.conventionalcommits.org/en/v1.0.0/) guidelines. If you would like, you can use [Gitmoji](https://gitmoji.dev) aswell for commit emojis.

You can now create a [pull request](https://github.com/inttter/md-badges/pulls) to the repository with your changes.

## Reporting an issue

If you encounter something that is wrong or incorrect, please check to see if the problem is not already an **open** [issue](https://github.com/inttter/issues).

If there is no open issue for your problem, [create a new issue](https://github.com/inttter/md-badges/issues/new?assignees=inttter&labels=bug&projects=&template=issue-report.md&title=) using the issue template. Describe the problem and provide any additional context. For example, your browser, device, and any screenshots.

## Adding a badge

> When you add a badge, make sure you have the necessary rights from who/whatever you are making a badge of to add it.

If you'd like to request a badge, please [open an issue](https://github.com/inttter/issues) with the **'Badge Request'** template, stating the name of the badge, and a description of what the badge is about. If possible, try to include a relevant link, such as a link to the official website for it. This is helpful in order to learn more about what you want added and whether it would be relevant.

If you want to add a new badge yourself, you can **contribute** a new badge by submitting a [pull request](https://github.com/inttter/md-badges/pulls) to the md-badges repository. 

When you contribute a new badge, make sure that you have checked for the following:

* Badge is not a **duplicate**
* Badge is in the **correct category**
* Badge image appears **without any issues**
* Badge follows the **same format** of every other badge

The format for inserting badges within a table is as follows:
    
```markdown
| Preview | Markdown Code |
|---------|---------------|
| [![Badge Name](Link)](#) | `[![Badge Name](Link)](#)` |
```

## Questions

If you have any inquiries, or you would like to ask for help, feel free to make an [issue](ttps://github.com/inttter/md-badges/issues) outside of the templates offered. You will usually get a response within 1-2 days.

## License

By contributing, you agree that your contributions will be licensed under the **MIT License**, which you can view [here](LICENSE). Note that companies, brands, or projects from the badges may have different licenses.