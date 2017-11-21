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

Bootstrap is a `package.json` dependency, it can easily be updated
with `npm update` or `yarn update`.

### Bootstrap variables customization

> Every Sass variable in Bootstrap 4 includes the !default flag
> allowing you to override the variable’s default value in your own
> Sass without modifying Bootstrap’s source code. Copy and paste
> variables as needed, modify their values, and remove the !default
> flag. If a variable has already been assigned, then it won’t be
> re-assigned by the default values in Bootstrap.

So in `src/style.scss` we can customize Bootstrap variables and then
import Bootstrap which will incorporate our custom design:

	 // Your variable overrides
	 $body-bg: #000;
	 $body-color: #111;

	 // Bootstrap and its default variables
	 @import "../node_modules/bootstrap/scss/bootstrap";

That file will be copied to `static/css/style.css` as part of a **yarn
build** (or *npm build*) task.

More on Bootstrap 4 customization: <https://getbootstrap.com/docs/4.0/getting-started/theming/#variable-defaults>.

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

## References

- [Bootstrap docs](https://getbootstrap.com/docs/4.0/)
- [Hugo docs](https://gohugo.io/)
- Installation instruction taken from [Hugo dimension theme](https://themes.gohugo.io/dimension)

## Screenshot

![screenshot](https://getbootstrap.com/docs/4.0/examples/screenshots/starter-template.jpg)
