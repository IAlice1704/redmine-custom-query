# Redmine Default Custom Query [![Gitter](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/hidakatsuya/redmine_default_url_options?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)


[![Build Status](http://img.shields.io/travis/hidakatsuya/redmine_default_url_options.svg?style=flat)](https://travis-ci.org/hidakatsuya/redmine_default_url_options)
[![Code Climate](http://img.shields.io/codeclimate/github/hidakatsuya/redmine_default_url_options.svg?style=flat)](https://codeclimate.com/github/hidakatsuya/redmine_default_url_options)

Redmine plugin for setting the default custom query of Issues for each project.

![Configure the default query per projects](https://raw.githubusercontent.com/wiki/hidakatsuya/redmine_default_url_options/images/select-default-query-per-projects.png)

![Apply the default query](https://raw.githubusercontent.com/wiki/hidakatsuya/redmine_default_url_options/images/issues-with-default-query.png)

## Usage

  1. Enable the Default Custom Query module in your project
  2. Select a custom query to set to default in setting for your project

## Supported versions

  * Redmine 3.1, 3.2, 3.3, 3.4
  * Ruby 2.2, 2.3, 2.4

## Install

`git clone` or copy an unarchived plugin(archived file is [here](https://github.com/hidakatsuya/redmine_default_url_options/releases)) to `plugins/redmine_default_url_options` on your Redmine path.

```
$ git clone https://github.com/hidakatsuya/redmine_default_url_options.git /path/to/your-redmine/plugins/redmine_default_url_options
```

Then, migrate:

```
$ cd /path/to/your-redmine
$ rake redmine:plugins:migrate NAME=redmine_default_url_options RAILS_ENV=production
```

That's all.

## Uninstall

At first, rollback schema:

```
$ cd /path/to/your-redmine
$ rake redmine:plugins:migrate NAME=redmine_default_url_options VERSION=0 RAILS_ENV=production
```

Then, remove `plugins/redmine_default_url_options` directory.

## Contribute

### How to test

```
$ cd /path/to/redmine
$ bundle install
$ bundle exec rake redmine:plugins:test NAME=redmine_default_url_options
```

### Pull Request

  1. Fork it
  2. Create your feature branch: `git checkout -b new-feature`
  3. Commit your changes: `git commit -am 'add some new feature'`
  4. Push to the branch: `git push origin new-feature`
  5. Create new Pull Request

### Report bugs

Please report from [here](https://github.com/hidakatsuya/redmine_default_url_options/issues/new).

## Copyright

&copy; Katsuya Hidaka. See MIT-LICENSE for further details.
