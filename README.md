SolidusPremadeCarts
===================

The fastest way to get your customers from "Looks neat" to "thanks for purchasing."

Some shopping platforms allow customers to add a specific item to their cart by
clicking a link, and they may even take the customer to the checkout page. We
improve on that capability a little by allowing the store owner to specify more
than one product. In the future, we hope to allow promotions to be applied as well.

Installation
------------

Add solidus_premade_carts to your Gemfile:

```ruby
gem 'solidus_premade_carts'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g solidus_premade_carts:install
```

Testing
-------

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs, and [Rubocop](https://github.com/bbatsov/rubocop) static code analysis. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle
bundle exec rake
```

When testing your applications integration with this extension you may use its factories.
Simply add this require statement to your spec_helper:

```ruby
require 'solidus_premade_carts/factories'
```

Contributing
-------------

This is an open source project, so we encourage users to contribute fixes and
improvements. Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our
contribution process.

Copyright (c) 2018 Gemini Development LLC, released under the New BSD License
