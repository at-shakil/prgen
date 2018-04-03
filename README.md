# PRGen

PRGen is a pull request message generator for chatwork.

## Installation

Linux installation requires `xclip`, which can be installed as follows.

```
$ apt install xclip
```

```ruby
gem 'prgen'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install prgen

## Usage

Prepare a message template (e.g. `.prgen.template.example`) and store it in `~/.prgen.template`

Now, generate and copy messages to clipboard using,

```sh
prgen copy <redmine_issue_id> <git_pull_id>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/at-shakil/prgen.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
