# Visual Studio Code

## General Settings

* [settings.json](./settings.json)

## Keybindings

* [For Mac](./keybindings.mac.json)
* [For Linux](./keybindings.linux.json)
* Modifications
    * Set back-forward navigation (helpful when using go-to-definitions)
    * Switch between the terminal and the editor
    * Switch between tabs (similar to the system console/terminal)
    * Switch Terminal windows
    * Replace "Reload Window" shortcut with "Start Debugging"
    * Disable debugger controls

## Extensions

### General

* [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)
    * Synchronize VSCode settings across multiple dev env's
    * Supports [pragmas](https://github.com/shanalikhan/code-settings-sync/wiki/Sync-Pragmas) for toggling depending on host (ex. "office", "home")
* Use [Hack](https://github.com/source-foundry/Hack) for the font
    * Provides consistent monospaced font for Windows, Mac, or Ubuntu
    * Distinguishes between zeroes from letter O's
    * Distinguishes between letter I's and letter L's
* [indent-rainbow](https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow) - Use colors to mark indentation levels
* [Comment Divider](https://marketplace.visualstudio.com/items?itemName=stackbreak.comment-divider) - Divide code into sections with comment headers
* [File Template](https://marketplace.visualstudio.com/items?itemName=RalfZhang.filetemplate) - Auto-populate new files with template code
* [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) - Edit and run codes on remote machines or docker containers
* [Terminals Manager](https://marketplace.visualstudio.com/items?itemName=fabiospampinato.vscode-terminals) - Auto-create multiple Terminal windows on startup
* [Path Intellisence](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense) - Auto-completion for filenames/paths
* [vsc-rename-files](https://marketplace.visualstudio.com/items?itemName=alfnielsen.vsc-rename-files) - Rename multiple files

### Themes

* [Dracula Official](https://marketplace.visualstudio.com/items?itemName=dracula-theme.theme-dracula) - Soft Dark Theme
* [Material Icons](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme) - Show type-appropriate icons for files/folders in Explorer

### Documentation

* [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint) - Lint Markdown files
* [Markdown PDF](https://marketplace.visualstudio.com/items?itemName=yzane.markdown-pdf) - Export Markdown files to PDF or HTML
* [PlantUML](https://marketplace.visualstudio.com/items?itemName=jebbs.plantuml) - Preview  and export PlantUML diagrams
* [Todo Tree](https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree) - Finds and lists all the `TODO` comments from your codes

### Configurations

* [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml) - Adds validation, completion, and formatting of YAML files

### Source Control

#### Git

* [Git Graph](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph) - View history and diffs from a tree-like UI
* [Git Blame](https://marketplace.visualstudio.com/items?itemName=waderyan.gitblame) - Click to show `git blame` info for specific lines
* [gitignore](https://marketplace.visualstudio.com/items?itemName=codezombiech.gitignore) - Add .gitignore from [github/gitignore](https://github.com/github/gitignore) repo

### Docker

* [Docker](https://marketplace.visualstudio.com/items?itemName=PeterJausovec.vscode-docker) - Manage Docker images/containers right from VS Code

### Kubernetes

* [Kubernetes](https://marketplace.visualstudio.com/items?itemName=ms-kubernetes-tools.vscode-kubernetes-tools) - Manage K8 clusters and adds intellisense for resources

### Language/Technology-Specific

#### Bash

* [Bash IDE](https://marketplace.visualstudio.com/items?itemName=mads-hartmann.bash-ide-vscode) - Adds code completion, outline, and jump to declaration for Bash script
* [Bash Debug](https://marketplace.visualstudio.com/items?itemName=rogalmic.bash-debug) - Adds launch configurations for bash scripts
* [shellcheck](https://marketplace.visualstudio.com/items?itemName=timonwong.shellcheck) - Linter and static analysis tool

#### Python

* [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python) - Adds support for linting, debugging, intellisense, syntax highlighting
    * [How to configure linting and formatting of Python files?](https://code.visualstudio.com/docs/python/linting)
    * [How to specify path to virtual environments?](https://code.visualstudio.com/docs/python/environments#_where-the-extension-looks-for-environments)
* [Python Docstring Generator](https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring) - Auto-fill the docstring
* [autoDocstring](https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring) - Adds docstring templates

#### C++

* [C++](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools) - Adds support for debugging, intellisense, syntax highlighting
* [cpplint](https://marketplace.visualstudio.com/items?itemName=mine.cpplint) - Adds support for linting C++ files
* [CMake](https://marketplace.visualstudio.com/items?itemName=twxs.cmake) - Adds support for syntax highlighting and intellisense

#### HTML

* [Auto Close Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag) + [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
* [Highlight Matching Tag](https://marketplace.visualstudio.com/items?itemName=vincaslt.highlight-matching-tag)
* [Color Highlight](https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight) - Show hex values in their actual color

#### JavaScript

* [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint) - Add support for linting JS files
* [Vetur](https://marketplace.visualstudio.com/items?itemName=octref.vetur) - Vue.js tooling
