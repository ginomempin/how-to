# How-To

A list of links to tutorials, templates, tools, and other helpful resources.

Contents

* [Git](#git)
* [Visual Studio Code](#visual-studio-code)
* [Docker](#docker)
* [Python](#python)
* [iOS](#ios)
* [HTML/CSS](#htmlcss)
* [Bash](#bash)
* [Heroku](#heroku)
* [Nginx](#Nginx)

## Git

* [The official documentation](https://git-scm.com/docs)
* Getting Started
    * [The simplest guide to getting started with git](http://rogerdudler.github.io/git-guide/)
    * [Git Gud](https://nic-hartley.github.io/git-gud/)
        * "*Git Gud is a web-based Git simulator. It shows you the git tree visually, and you can run commands to show you what they do to the tree*." ([source](https://dev.to/nichartley/git-gud-at-git-5d9k))
    * [Oh shit, git!](https://ohshitgit.com/)
        * What to do when you did something wrong
* Configuration
    * [.gitignore templates](https://github.com/github/gitignore)
    * .gitconfig
        * [For Linux or Mac](./settings/git/unix/config)
        * [For Windows](./settings/git/windows/config)
    * gpg-agent.conf
        * [For Linux or Mac](./settings/git/unix/gpg-agent.conf)
    * [Mind the End of Your Line](https://adaptivepatchwork.com/2012/03/01/mind-the-end-of-your-line/)
        * How to ensure that Git does not screw up your code when working on both Unix, Linux, or Mac (which use `LF`) and Windows (which uses `CRLF`)

## Visual Studio Code

* [General Settings](./settings/vscode/settings.json)
    * Font
    * Indentation and Whitespace Control
    * Word Wrapping
    * Intellisense
    * Linting
    * Color Customization
* Keybindings ([Mac](./settings/vscode/keybindings.mac.json), [Linux](./settings/vscode/keybindings.linux.json))
    * Set back-forward navigation (helpful when using go-to-definitions)
    * Set keys for switching between the terminal and the editor
    * Set keys for switching tabs
* Extensions and Extension-Specific Settings
    * General
        * [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync) - synchronize VSCode settings across multiple dev env's
        * [indent-rainbow](https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow) - use colors to mark indentation levels
        * [Section Divider](https://marketplace.visualstudio.com/items?itemName=dinhani.divider) - divide code into sections with comment headers
        * [File Template](https://marketplace.visualstudio.com/items?itemName=RalfZhang.filetemplate) - auto-populate new files with template code
        * Use [Hack](https://github.com/source-foundry/Hack) for the font
            * Provides consistent monospaced font for Windows, Mac, or Ubuntu
            * Distinguishes between zeroes from letter O's
            * Distinguishes between letter I's and letter L's
    * Themes
        * [Dracula Official](https://marketplace.visualstudio.com/items?itemName=dracula-theme.theme-dracula) - dark theme
        * [Material Icons](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme) - show type-appropriate icons for files/folders in Explorer
    * Documentation
        * [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)
        * [Markdown PDF](https://marketplace.visualstudio.com/items?itemName=yzane.markdown-pdf) - convert Markdown files to PDF
        * [Mermaid](https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid) - preview Mermaid diagrams
        * [PlantUML](https://marketplace.visualstudio.com/items?itemName=jebbs.plantuml) - preview PlantUML diagrams
        * [Todo Tree](https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree) - finds and lists all the `TODO` comments from your codes
    * Debugging
        * [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) - edit and run codes on remote machines or docker containers
        * [Bash Debug](https://marketplace.visualstudio.com/items?itemName=rogalmic.bash-debug) - launch configuration for bash scripts
    * Git
        * [Git Graph](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph) - view history and diffs from a tree-like UI
        * [Git Blame](https://marketplace.visualstudio.com/items?itemName=waderyan.gitblame) - click to show `git blame` info for specific lines
    * Python
        * [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python) - linting, debugging, intellisense, formatting
            * [How to enable linting of Python files?](https://code.visualstudio.com/docs/python/linting)
            * [How to specify path to virtual environments?](https://code.visualstudio.com/docs/python/environments#_where-the-extension-looks-for-environments)
        * [autoDocstring](https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring)
    * C/C++
        * [C/C++](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools) - linting, debugging, intellisense, formatting
        * [CMake](https://marketplace.visualstudio.com/items?itemName=twxs.cmake) - syntax highlighting and intellisense
    * HTML
        * [Auto-Close Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag)
        * [Highlight Matching Tag](https://marketplace.visualstudio.com/items?itemName=vincaslt.highlight-matching-tag)
    * Javascript
        * [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
        * [Debugger for Chrome](https://marketplace.visualstudio.com/items?itemName=msjsdiag.debugger-for-chrome)
        * [vetur](https://marketplace.visualstudio.com/items?itemName=octref.vetur) - Vue.js tooling
    * Docker
        * [Docker](https://marketplace.visualstudio.com/items?itemName=PeterJausovec.vscode-docker)

## Docker

* [Docker CLI & API References](https://docs.docker.com/reference/)
* Tutorials
    * [5 part Docker series, beginner to master](https://dev.to/softchris/5-part-docker-series-beginner-to-master-3m1b)
    * [How to deploy a local registry?](https://docs.docker.com/registry/deploying/)
    * [How to run without `sudo`](https://docs.docker.com/install/linux/linux-postinstall/)
* Tools
    * [Portus](http://port.us.org/) - locally-hosted web app for managing Docker images
    * [lazydocker](https://github.com/jesseduffield/lazydocker) - console-based dashboard

## Python

* Setup
    1. Install Python 3
        * On a Unix-based OS, the system's default Python installation is normally Python2. Check this by running `python --version` on a terminal. If this is so, install Python3 but **DO NOT REMOVE / OVERWRITE / UNINSTALL** the old Python2. The system uses Python2 for its internal scripts and removing it may break the OS installation.
        * For Linux, either install it from `apt` or from source
            * [How to install Python3.7 on Ubuntu18.04?](https://linuxize.com/post/how-to-install-python-3-7-on-ubuntu-18-04/)
        * For Mac, use Homebrew
            * [Installing Python 3 on Mac OS X](https://docs.python-guide.org/starting/install3/osx/)
            * [How is Python handled by Homebrew](https://docs.brew.sh/Homebrew-and-Python)
        * Verify the Python installation by running
            ```shell
            $ which python3
            $ python3 --version

            ```
    1. Setup and use a [virtual environment](https://packaging.python.org/tutorials/installing-packages/#creating-virtual-environments)
        * There are [many different modules](https://stackoverflow.com/q/41573587/2745495) for creating a virtual environment
        * Recommendations:
            * If Python2 support is needed, use the [virtualenv](https://virtualenv.pypa.io/en/stable/) module
            * If Python3 only, use the built-in [venv](https://docs.python.org/3/library/venv.html) module
        * For `venv`
            * Create the parent directory at `$HOME/.venvs`
            * Copy the [bash aliases for using venv](./settings/bash/bash_aliases)
                * `mkvenv PROJECT_NAME`
                * `upvenv PROJECT_NAME`
                * `dnvenv`
                * `rmvenv PROJECT_NAME`
                * `lsvent`
    1. For each Python project
        * Maintain a *requirements.txt* file
            ```shell
            $ pip freeze > requirements.txt

            ```
        * Create a virtual environment
        * Install the project dependencies from the *requirements.txt*:
            ```shell
            $ pip install -r requirements.txt

            ```
        * When working on a project, *always* activate the virtual environment
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
    * [ipython](https://ipython.readthedocs.io/en/stable/index.html) - enhanced interactive Python shell
    * [setuptools](https://setuptools.readthedocs.io/en/latest/setuptools.html) - for distributing Python packages or scripts
    * [click](https://click.palletsprojects.com) - for creating CLI-based applications
    * [tqdm](https://tqdm.github.io/) - for better progress bars and loop tracking
    * [flask](https://flask.palletsprojects.com/) - lightweight web application framework
    * [bokeh](https://bokeh.pydata.org/en/latest/) - interactive data visualization for modern web browsers

## iOS

* [App Store Review Guidelines History](http://www.appstorereviewguidelineshistory.com/)
    * Highlights (literally) the changes when Apple updates their [App Store Review Guidelines](https://developer.apple.com/app-store/review/guidelines/)

## HTML/CSS

* [Font Awesome](https://fontawesome.com/?from=io)
* [Google Fonts](https://fonts.google.com/)

## Bash

* [Terminal Aliases](./settings/bash/bash_aliases)
* [Terminal Output Formatting](./settings/bash/bash_output)
* Script Templates
    * [utils.sh](./templates/utils.sh): for holding common functions
    * [template.sh](./templates/template.sh): base format for all other scripts

## Heroku

* Deployment
    * [Deploying with Git](https://devcenter.heroku.com/articles/git)
    * [How to link a folder with an existing Heroku app?](https://stackoverflow.com/q/5129598/2745495)
* Framework-Specific Setups
    * Python/Flask
        * [Deploying Python and Django Apps on Heroku](https://devcenter.heroku.com/articles/deploying-python)
        * [Specifying a Python Runtime](https://devcenter.heroku.com/articles/python-runtimes)
        * [What does the Procfile mean?](https://stackoverflow.com/q/30178792/2745495)
* Advanced Setups
    * [Buildpacks](https://devcenter.heroku.com/articles/buildpacks)
    * [How to use the Heroku ffmpeg Buildpack for Python?](https://stackoverflow.com/q/58146519/2745495)
* Troubleshooting
    * `git push heroku master` problems
        * [*Permission denied (publickey)*](https://stackoverflow.com/q/4269922/2745495)

## Nginx

* Configuration Templates
    * For proxying to a NodeJS/Flask server: [sites-available/server.conf](./templates/nginx/sites-available/server.conf)
    * For sharing common proxy setttings: [conf.d/server-proxy.conf](./templates/nginx/conf.d/server-proxy.conf)
