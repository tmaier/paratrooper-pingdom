# Paratrooper - Newrelic Notifier

[![Gem Version](https://badge.fury.io/rb/paratrooper-newrelic.png)](http://badge.fury.io/rb/paratrooper-newrelic)

Notify [Newrelic][] to stop application monitoring during deployments when
using [Paratrooper][]

## Installation

Add this line to your application's Gemfile:

    gem 'paratrooper-newrelic'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install paratrooper-newrelic

## Usage

When initializing `Paratrooper::Deploy` a `notifiers` option can be passed

```ruby
Paratrooper::Deploy.new('app_name',
  notifiers: [
    Paratrooper::Newrelic::Notifier.new('api_key', 'account_id', 'application_id')
  ]
)
```

This will notify Newrelic that a deploy has begun and to stop application
monitoring until enabled again. When Paratrooper has finished your deploy
another notification will be sent to Newrelic to enable application monitoring.

For more information on `notifiers`, see [Paratrooper][] documentation.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Thanks

* [Brandon Farmer][]

[Newrelic]: http://newrelic.com
[Paratrooper]: https://github.com/mattpolito/paratrooper
[Brandon Farmer]: https://github.com/bthesorceror
