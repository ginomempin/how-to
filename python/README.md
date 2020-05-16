# Python

## Setup

1. Install Python 3
    * On a Unix-based OS, the system's default Python installation is normally Python 2. Check this by running `python --version` on a terminal. If this is so, install Python 3 but **DO NOT REMOVE / OVERWRITE / UNINSTALL** the old Python 2. The system uses Python 2 for its internal scripts and removing it may break the OS installation.
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
        * If Python 2 support is needed, use the [virtualenv](https://virtualenv.pypa.io/en/stable/) module
        * If Python 3 only, use the built-in [venv](https://docs.python.org/3/library/venv.html) module
    * For `venv`
        * Create the parent directory at `$HOME/.venvs`
        * Copy the [bash aliases for using venv](../bash/bash_aliases)
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

## FAQ

* [The FAQ list every Python developer MUST first read](https://docs.python.org/3/faq/programming.html)
* [How does `import` work?](https://docs.python.org/3/tutorial/modules.html#the-module-search-path)
* Public and Private
    * [Why are Python's 'private' methods not actually private?](https://stackoverflow.com/q/70528/2745495)
    * [What is the meaning of a single and a double underscore before an object name?](https://stackoverflow.com/q/1301346/2745495)
* Metaclasses
    * [What are metaclasses?](https://stackoverflow.com/q/100003/2745495)
    * [How to use metaclasses?](https://realpython.com/python-metaclasses/)

## Coding Convetions

* [PEP8](https://www.python.org/dev/peps/pep-0008/)
* [The Little Book of Python Anti-Patterns](https://docs.quantifiedcode.com/python-anti-patterns/index.html)

## Package Management

* [Managing Python packages the right way](https://opensource.com/article/19/4/managing-python-packages)

## Notable Modules

### Linters

* [pydocstyle](https://pypi.org/project/pydocstyle/)
* [pylint](https://www.pylint.org/)

### Terminal

* [ipython](https://ipython.readthedocs.io/en/stable/index.html) - Enhanced interactive Python shell

### CLI

* [colorama](https://pypi.org/project/colorama/) - Cross-platform colorizer for console logs
* [click](https://click.palletsprojects.com) - For creating CLI-based applications
* [tqdm](https://tqdm.github.io/) - For better progress bars and loop tracking

### Web Application

* [flask](https://flask.palletsprojects.com/) - Lightweight web application framework

### Data Visualization

* [bokeh](https://bokeh.pydata.org/en/latest/) - Interactive and embeddable images for modern web browsers
