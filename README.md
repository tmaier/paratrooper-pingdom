# Paratrooper - Pingdom Notifier

[![Gem Version](https://badge.fury.io/rb/paratrooper-pingdom.png)](http://badge.fury.io/rb/paratrooper-pingdom)
[![Code Climate](https://codeclimate.com/github/tmaier/paratrooper-pingdom.png)](https://codeclimate.com/github/tmaier/paratrooper-pingdom)

Notify [Pingdom][] to stop application monitoring during deployments when
using [Paratrooper][]

## Installation

Add this line to your application's Gemfile:

    gem 'paratrooper-pingdom'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install paratrooper-pingdom

## Usage

When initializing `Paratrooper::Deploy` a `notifiers` option can be passed

```ruby
Paratrooper::Deploy.new('app_name',
  notifiers: [
    Paratrooper::Pingdom::Notifier.new('app_key', 'username', 'password')
  ]
)
```

This will notify Pingdom that a deploy has begun and to stop application
monitoring until enabled again. When Paratrooper has finished your deploy
another notification will be sent to Pingdom to enable application monitoring.

For more information on `notifiers`, see [Paratrooper][] documentation.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Thanks

The Pingdom Notifier is based on the [NewRelic Notifier][].

* [Matt Polito][]
* [Brandon Farmer][]

[Pingdom]: https://www.pingdom.com/
[Paratrooper]: https://github.com/mattpolito/paratrooper
[NewRelic Notifier]: https://github.com/mattpolito/paratrooper-newrelic
[Brandon Farmer]: https://github.com/bthesorceror
[Matt Polito]: https://github.com/mattpolito
