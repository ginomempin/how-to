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
    * If Python 2 support is needed, use the [virtualenv](https://virtualenv.pypa.io/en/stable/) module
    * If Python 3 only, use the built-in [venv](https://docs.python.org/3/library/venv.html) or [poetry](https://python-poetry.org/)
        * For `venv`
            * Set `VENV_DIR` to directory for virtual environments (ex. `$HOME/.venvs`)
            * Copy the [bash aliases for using venv](../bash/bash_aliases)
                * `mkvenv PROJECT_NAME`
                * `upvenv PROJECT_NAME`
                * `dnvenv`
                * `rmvenv PROJECT_NAME`
                * `lsvenv`
        * For `poetry`
            * Set [`poetry config cache-dir`](https://python-poetry.org/docs/configuration/#cache-dir)

1. For each Python project
    * For `virtualenv` and `venv`
        * Create/Activate a virtual environment
            ```shell
            $ mkvenv NAME /path/to/python

        * Create a *requirements.txt* file
            ```shell
            $ pip freeze > requirements.txt

            ```
        * Commit the *requirements.txt* file
        * When switching environments:
            ```shell
            $ pip install -r requirements.txt

            ```
    * For `poetry`
        * Specify the Python version to use
            ```shell
            $ cd <project>
            $ poetry env use python3
            $ poetry env use python3.X # 3.7, 3.8, 3.9, 3.10, 3.11
            ```
        * Initialize the project
            ```shell
            $ poetry init
            ```
        * Install packages
            ```shell
            $ poetry add <package>
            $ pipenv add --dev PACKAGE
            ```
        * Commit the generated `pyproject.toml` and `poetry.lock`
        * Activate the environment
            ```shell
            $ poetry shell
            ```

## FAQ

* [The FAQ list every Python developer MUST first read](https://docs.python.org/3/faq/programming.html)
* [How does `import` work?](https://docs.python.org/3/tutorial/modules.html#the-module-search-path)
* Public and Private
    * [Why are Python's 'private' methods not actually private?](https://stackoverflow.com/q/70528/2745495)
    * [What is the meaning of a single and a double underscore before an object name?](https://stackoverflow.com/q/1301346/2745495)
* Metaclasses
    * [What are metaclasses?](https://stackoverflow.com/q/100003/2745495)
    * [How to use metaclasses?](https://realpython.com/python-metaclasses/)

## Coding Conventions

* [PEP8](https://www.python.org/dev/peps/pep-0008/)
* [The Little Book of Python Anti-Patterns](https://docs.quantifiedcode.com/python-anti-patterns/index.html)

## Package Management

* [Managing Python packages the right way](https://opensource.com/article/19/4/managing-python-packages)

## Notable Modules

### Linters

* [pydocstyle](https://pypi.org/project/pydocstyle/)
* [mypy](http://mypy-lang.org/)
* [flake8](https://flake8.pycqa.org/en/latest/)

### Formatters

* [black](https://github.com/psf/black)
* [yapf](https://github.com/google/yapf)

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
