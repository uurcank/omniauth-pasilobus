# Omniauth::Pasilobus

This gem contains the OmniAuth strategy for authenticating to [Pasilobus](https://www.pasilobus.com).

## Getting Started

Contact [Pasilobus](mailto:support@pasilobus.com) to apply for a developer account.

1. Create an application and note the App ID and the App secret
2. Make sure that you have already installed OmniAuth into your application.  

## Installation

Add this gem to your application's ```Gemfile```:

```ruby
gem 'omniauth-pasilobus'
```

Execute the ```bundle``` command to install the gem.

Next, tell OmniAuth about the Pinterest provider. For a Ruby on Rails application, your ```config/initializers/omniauth.rb``` file should look like:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :pasilobus, ENV['PASILOBUS_APP_ID'], ENV['PASILOBUS_APP_SECRET'], scope: 'read_public, write_public', redirect_uri: "https://mysite.com/auth/pasilobus/callback"
end
```

After restarting your application, point the authenticating user to ```/auth/pasilobus```, the rest will be handled by OmniAuth.

## Authentication hash

Here's an example authentication hash available in ```request.env['omniauth.auth']```:

```ruby
{
  :provider => 'pasilobus',
  :uid => '1234',
  :info => {
    :email => "user@email.com",
    :avatar => "...",
  }
}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pasilobus/omniauth-pasilobus. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Omniauth::Pasilobus project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/pasilobus/omniauth-pasilobus/blob/master/CODE_OF_CONDUCT.md).
