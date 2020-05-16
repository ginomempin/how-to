# How-To

A collection of links to tutorials, templates, tools, and other helpful resources.

* [Git](./git/README.md)
* [Visual Studio Code](./vscode/README.md)
* [Docker](#docker)
* [Python](#python)
* [iOS](#ios)
* [HTML/CSS](#htmlcss)
* [Bash](#bash)
* [Regex](#regex)
* [Heroku](#heroku)
* [Nginx](#Nginx)

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
            * Copy the [bash aliases for using venv](./templates/bash/bash_aliases)
                * `mkvenv PROJECT_NAME`
                * `upvenv PROJECT_NAME`
                * `dnvenv`
                * `rmvenv PROJECT_NAME`
                * `lsvenv`
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

* Guides
    * [When laziness is efficient: Make the most of your command line](https://stackoverflow.blog/2020/02/12/when-laziness-is-efficient-make-the-most-of-your-command-line/)
* [Terminal Aliases](./templates/bash/bash_aliases)
* [Terminal Output Formatting](./templates/bash/bash_output)
* Script Templates
    * [utils.sh](./templates/bash/utils.sh): for holding common functions
    * [template.sh](./templates/bash/template.sh): base format for all other scripts
* Static Analysis Tools
    * [shellcheck](https://www.shellcheck.net/)

## Regex

* [RegExr](https://regexr.com/) - scratch pad for trying out RegEx expressions + cheatsheet
* [iHateRegex.io](https://ihateregex.io/) - a **more** visual scratch pad + common RegEx patterns

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
