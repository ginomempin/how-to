# How-To

A collection of links to tutorials, templates, tools, and other helpful resources.

* [Git](./git/README.md)
* [Visual Studio Code](./vscode/README.md)
* [Docker](./docker/README.md)
* [Bash](./bash/README.md)
* [Python](./python/README.md)
* [HTML/CSS](./html/README.md)
* [iOS](./ios/README.md)
* [Regex](#regex)
* [Heroku](#heroku)
* [Nginx](#Nginx)

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
