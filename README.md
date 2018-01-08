# WordPress: Civic Tech Toronto

This is a WordPress repository configured to run on the **Civic Tech
Toronto** website on the [Pantheon platform](https://pantheon.io).

**Pantheon** is website platform optimized and configured to run high performance sites with an amazing developer workflow. There is built-in support for features such as Varnish, Redis, Apache Solr, New Relic, Nginx, PHP-FPM, MySQL, PhantomJS and more. 

## About

Our experimental development site is hosted at:
https://dev.toronto.civictech.ca

The Panthon dashboard is here:
https://dashboard.pantheon.io/sites/2719de9e-f8ef-44d0-9627-bc83e50bd0e2

You'll need to ask for access to the dashboard. (Check our [Service
Access doc][service-access] to see who can give it to you.)

   [service-access]: https://hackmd.io/s/SJcySi2db#services

## Philosophy

- Keep important site configuration in code, not in the database.
- Capture plugin and theme customizations in version control, as opposed
  to untracked changes on an FTP server.

## File Organization

- Theme customizations are stores in
  [`web/wp-content/themes/custom/zerif-lite-child`][child-theme]
- We are using a custom version of the [Meetup Widgets
  plugin][meetup-widget]. (See [changes][meetup-plugin-changes])
- All other themes and plugins are using unmodified versions.
- We use [Composer package manager][about-composer] to help manage Wordpress.
  - `composer.json` specifies roughly what theme/plugin version we want
  - `composer.lock` locks these themes/plugins to specific versions
  - `composer` commands help us rebuild the theme/plugin directories
    according to what we want

   [child-theme]: web/wp-content/themes/custom/zerif-lite-child
   [meetup-widget]: https://wordpress.org/plugins/meetup-widgets/
   [meetup-plugin-changes]: https://github.com/ryelle/Meetup-Widgets/compare/master...patcon:civictechto
   [about-composer]: https://roots.io/using-composer-with-wordpress/

## Projects page

The [Projects page][projects-page] is a little special. It is
automatically generated and updated from the ["Hacknight Projects"
Trello board][projects-board], using projects specifically tagged with
the `Website Featured` label.

Source Code: [`projects.php`][projects-php] [`projects.js`][projects-js]

   [projects-page]: http://dev-civictechto.pantheonsite.io/projects/
   [projects-board]: https://trello.com/b/EVvNEGK5/hacknight-projects
   [projects-php]: web/wp-content/themes/custom/zerif-lite-child/projects.php
   [projects-js]: web/wp-content/themes/custom/zerif-lite-child/js/projects.js
