Hugo bootstrap starter template
======================================

[Hugo](https://gohugo.io) [theme](https://gohugo.io/themes/) based on
the [Bootstrap starter
template](https://getbootstrap.com/docs/4.0/examples/starter-template/)
example.

Just the needed code to use Bootstrap in Hugo with a clean
setup to update and customize its variables.

## Features



### Easy update



### Bootstrap variables customization

## Screenshot

![screenshot](https://getbootstrap.com/docs/4.0/examples/screenshots/starter-template.jpg)

## Installation

Run the following commands inside your Hugo site folder:

    $ git clone https://github.com/marcanuy/hugo-bootstrap-starter-template.git themes/hugo-boostrap-starter-template

Alternatively use git submodules in order to have a way to easily update the theme from the source in case you have your site in git as well.
For this run the following commands inside your Hugo site folder:

    $ git submodule add https://github.com/marcanuy/hugo-bootstrap-starter-template.git themes/hugo-boostrap-starter-template

If you checkout your site from a repository which has this added as a submodule (e.g. if you are using CI to deploy), execute following commands or put them into a initgit.sh file in your repository which can be executed by your CI:

    $ git submodule init
    $ git submodule update

In order to update all the existing submodules from their upstreams, you can either go into each submodule root folder and do the normal git pull or execute following command:

    $ git submodule foreach git pull

