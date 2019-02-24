# How-To

A list of links to tutorials, templates, FAQs, usage guides, tips and tricks, programming tools, and other helpful resources.

Contents

* [Git](#git)
* [Visual Studio Code](#visual-studio-code)
* [Python](#python)
* [iOS](#ios)
* [HTML/CSS](#htmlcss)
* [Heroku](#heroku)

## Git

* [The official documentation](https://git-scm.com/docs)
* Getting Started
    * [The simplest guide to getting started with git](http://rogerdudler.github.io/git-guide/)
    * [Git Gud](https://nic-hartley.github.io/git-gud/)
        * "*Git Gud is a web-based Git simulator. It shows you the git tree visually, and you can run commands to show you what they do to the tree*." ([source](https://dev.to/nichartley/git-gud-at-git-5d9k))
* Configuration
    * [.gitignore templates](https://github.com/github/gitignore)
    * .gitconfig
        * [for Linux or Mac](./git/gitconfig/unix/.gitconfig)
        * [for Windows](./git/gitconfig/windows/.gitconfig)
    * [Mind the End of Your Line](https://adaptivepatchwork.com/2012/03/01/mind-the-end-of-your-line/)
        * How to ensure that Git does not screw up your code when working on both Unix, Linux, or Mac (which use `LF`) and Windows (which uses `CRLF`)

## Visual Studio Code

* Settings
    * Enable auto-trimming of whitespaces to prevent unnecessary file changes
        ```json
        "files.trimFinalNewlines": true,
        "files.trimTrailingWhitespace": true,
        ```
    * Enable [linting of Python files](https://code.visualstudio.com/docs/python/linting)
        * PEP8
        * Pylint
    * Customize color indicators in Explorer
        ```json
        "workbench.colorCustomizations": {
            "editorWarning.foreground": "#fff333",
            "gitDecoration.ignoredResourceForeground": "#635e5e",
            "gitDecoration.untrackedResourceForeground": "#0099ff",
            "gitDecoration.modifiedResourceForeground": "#00ff2aaf"
        },
        ```
* Keybindings
    * Set back-forward navigation (helpful when jumping to definition)
        * on Mac:
        ```json
        {
            "key": "cmd+left",
            "command": "workbench.action.navigateBack"
        },
        {
            "key": "cmd+right",
            "command": "workbench.action.navigateForward"
        },
        ```
        * on Windows:
        ```json
        {
            "key": "alt+left",
            "command": "workbench.action.navigateBack"
        },
        {
            "key": "alt+right",
            "command": "workbench.action.navigateForward"
        }
        ```
* Extensions
    * General
        * [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync) - synchronize VSCode settings across multiple dev env's
        * [Git Blame](https://marketplace.visualstudio.com/items?itemName=waderyan.gitblame)
        * [Git History](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory)
        * [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)
        * [indent-rainbow](https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow) - use colors to mark indentation levels
        * [vscode-icons](https://marketplace.visualstudio.com/items?itemName=robertohuertasm.vscode-icons) - show type-appropriate icons for files/folders in Explorer
    * Python-specific
        * [autoDocstring](https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring)
    * HTML-specific
        * [Auto Close Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag)
    * Javascript-specific
        * [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
        * [Debugger for Chrome](https://marketplace.visualstudio.com/items?itemName=msjsdiag.debugger-for-chrome)
        * [vetur](https://marketplace.visualstudio.com/items?itemName=octref.vetur) - Vue.js tooling


## Python

* [The FAQ list every Python developer MUST READ](https://docs.python.org/3/faq/programming.html)
* Coding Conventions
    * [PEP8](https://www.python.org/dev/peps/pep-0008/)
    * [The Little Book of Python Anti-Patterns](https://docs.quantifiedcode.com/python-anti-patterns/index.html)
* Modules and Packages
    * [The Module Search Path](https://docs.python.org/3/tutorial/modules.html#the-module-search-path)
* Public and Private
    * [Why are Python's 'private' methods not actually private?](https://stackoverflow.com/q/70528/2745495)
    * [What is the meaning of a single and a double underscore before an object name?](https://stackoverflow.com/q/1301346/2745495)
* Metaclasses
    * [What are metaclasses in Python?](https://stackoverflow.com/q/100003/2745495)
    * [Python Metaclasses](https://realpython.com/python-metaclasses/)

## iOS

* [App Store Review Guidelines History](http://www.appstorereviewguidelineshistory.com/)
    * Highlights (literally) the changes when Apple's [App Store Review Guidelines](https://developer.apple.com/app-store/review/guidelines/)

## HTML/CSS

* [Font Awesome](https://fontawesome.com/?from=io)
* [Google Fonts](https://fonts.google.com/)

## Heroku

* Setup
    * [How to link a folder with an existing Heroku app?](https://stackoverflow.com/q/5129598/2745495)
* Troubleshooting
    * `git push heroku master` problems
        * [*Permission denied (publickey)*](https://stackoverflow.com/q/4269922/2745495)
