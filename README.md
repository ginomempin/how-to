# How-To

A list of links to tutorials, templates, FAQs, usage guides, tips and tricks, programming tools, and other helpful resources.

Contents

* [Git](#git)
* [Visual Studio Code](#visual-studio-code)
* [Docker](#docker)
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
        * [for Linux or Mac](./git/unix/config)
        * [for Windows](./git/windows/config)
    * gpg-agent
        * [for Linux or Mac](./git/unix/gpg-agent.conf)
    * [Mind the End of Your Line](https://adaptivepatchwork.com/2012/03/01/mind-the-end-of-your-line/)
        * How to ensure that Git does not screw up your code when working on both Unix, Linux, or Mac (which use `LF`) and Windows (which uses `CRLF`)

## Visual Studio Code

* General Settings
    * Enable auto-trimming of whitespaces to prevent unnecessary file changes
        ```json
        "files.trimFinalNewlines": true,
        "files.trimTrailingWhitespace": true,

        ```
    * Enable word wrapping
        ```json
        "editor.wordWrap": "wordWrapColumn",
        "editor.wordWrapColumn": 120,
        "editor.wrappingIndent": "indent",
        ```
    * Customize color indicators in Explorer
        ```json
        "workbench.colorCustomizations": {
            "list.errorForeground": "#f66",
            "list.warningForeground": "#fff333",
            "editorWarning.foreground": "#fff333",
            "gitDecoration.ignoredResourceForeground": "#635e5e",
            "gitDecoration.untrackedResourceForeground": "#0099ff",
            "gitDecoration.modifiedResourceForeground": "#00ff2aaf"
        }

        ```
* Keybindings
    * Set back-forward navigation (helpful when jumping to definitions)
        * Mac
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
        * Windows
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
    * Set keys for switching tabs
        * Mac
        ```json
        {
            "key": "ctrl+PageDown",
            "command": "workbench.action.nextEditor"
        },
        {
            "key": "ctrl+PageUp",
            "command": "workbench.action.previousEditor"
        },
        ```
* Extensions and Extension-Specific Settings
    * General
        * [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync) - synchronize VSCode settings across multiple dev env's
        * [indent-rainbow](https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow) - use colors to mark indentation levels
    * Documentation
        * [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)
        * [PlantUML](https://marketplace.visualstudio.com/items?itemName=jebbs.plantuml)
        * [Todo Tree](https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree)
    * Themes
        * [Dracula Official](https://marketplace.visualstudio.com/items?itemName=dracula-theme.theme-dracula) - dark theme
        * [Material Icons](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme) - show type-appropriate icons for files/folders in Explorer
    * Git
        * [Git Blame](https://marketplace.visualstudio.com/items?itemName=waderyan.gitblame)
        * [Git History](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory)
    * Python
        * Enable [linting of Python files](https://code.visualstudio.com/docs/python/linting)
        * [autoDocstring](https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring)
    * HTML
        * [Auto Close Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag)
        * [Highlight Matching Tag](https://marketplace.visualstudio.com/items?itemName=vincaslt.highlight-matching-tag)
    * Javascript
        * [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
        * [Debugger for Chrome](https://marketplace.visualstudio.com/items?itemName=msjsdiag.debugger-for-chrome)
        * [vetur](https://marketplace.visualstudio.com/items?itemName=octref.vetur) - Vue.js tooling
    * Docker
        * [vscode-docker](https://marketplace.visualstudio.com/items?itemName=PeterJausovec.vscode-docker)

## Docker

* [5 part Docker series, beginner to master](https://dev.to/softchris/5-part-docker-series-beginner-to-master-3m1b)
* [Docker CLI & API References](https://docs.docker.com/reference/)
* [How to deploy a local registry](https://docs.docker.com/registry/deploying/)

## Python

* Setup
    1. Install Python 3
        * On a Unix-based OS, the system's default Python installation might be Python 2. Check this by running `python --version` on a terminal. If this is so, install Python 3 but **DO NOT REMOVE / OVERWRITE / UNINSTALL** the old Python 2. The system uses Python 2 for its internal scripts and removing it may break the OS installation.
        * Use [Homebrew](https://docs.brew.sh/Homebrew-and-Python) (which also installs the appropriate `pip`)
        * Verify the Python installation by running
            ```bash
            $ which python3
            $ python3 --version

            ```
    1. Install [virtualenv](https://virtualenv.pypa.io/en/stable/)
        * Do `pip install virtualenv`
        * Using a **virtualenv** allows:
            * Different projects to use different packages
            * Different projects to use different versions of the same packages
            * Separation between system-specific and project-specific packages
            * Tracking of the dependencies of each project
    1. Install [virtualenvwrapper](http://virtualenvwrapper.readthedocs.io/en/latest/#)
        * Do `pip install virtualenvwrapper`
        * Notable [virtualenvwrapper commands](http://virtualenvwrapper.readthedocs.io/en/latest/command_ref.html):
            * `mkvirtualenv`
            * `lsvirtualenv`
            * `lssitepackages`
            * `workon`
            * `deactivate`
    1. Create the directory for storing Python virtual environments
        ```bash
        $ mkdir -p ~/.virtualenvs

        ```
    1. Add the following to your environment's **.bash_profile** (or its equivalent):
        ```bash
        export VIRTUALENVWRAPPER_PYTHON=$(which python3)
        export WORKON_HOME=~/.virtualenvs
        source /usr/local/bin/virtualenvwrapper.sh

        ```
    1. Create an environment for each project, ex. `mkvirtualenv myapp`
    1. Activate the project's virtual environment, ex. `workon myapp`
    1. Install project dependencies from [requirements.txt](./requirements.txt):
        ```bash
        $ pip install -r requirements.txt

        ```
* FAQ
    * [The FAQ list every Python developer MUST first read](https://docs.python.org/3/faq/programming.html)
    * [How does `import` work?](https://docs.python.org/3/tutorial/modules.html#the-module-search-path)
    * Public and Private
        * [Why are Python's 'private' methods not actually private?](https://stackoverflow.com/q/70528/2745495)
        * [What is the meaning of a single and a double underscore before an object name?](https://stackoverflow.com/q/1301346/2745495)
    * Metaclasses
        * [What are metaclasses?](https://stackoverflow.com/q/100003/2745495)
        * [How to use metaclasses?](https://realpython.com/python-metaclasses/)
* Coding Conventions
    * [PEP8](https://www.python.org/dev/peps/pep-0008/)
    * [The Little Book of Python Anti-Patterns](https://docs.quantifiedcode.com/python-anti-patterns/index.html)
* Package Management
    * [Managing Python packages the right way](https://opensource.com/article/19/4/managing-python-packages)
* Notable Packages and Utilities
    * Linters
        * [pep8](http://pep8.readthedocs.org/)
        * [pylint](https://www.pylint.org/)
    * [setuptools](https://setuptools.readthedocs.io/en/latest/setuptools.html) - for distributing Python packages or scripts
    * [click](https://click.palletsprojects.com) - for creating CLI-based applications
    * [tqdm](https://tqdm.github.io/) - for better progress bars and loop tracking

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
