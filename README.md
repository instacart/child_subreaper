# ChildSubreaper

A simple Ruby wrapper for setting PR_SET_CHILD_SUBREAPER on a Ruby process to allow re-parenting of any processes left orphaned by child process termination. For more details see [manpage](https://man7.org/linux/man-pages/man2/PR_SET_CHILD_SUBREAPER.2const.html)

## Installation

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add child_subreaper
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install child_subreaper
```

## Usage

In your app, in whatever parent process you have that is least likely to be restarted (typically a cluster manager process or app preloader) just run `ChildSubreaper.enable` and any processes in the grandchild+ generations will become child processes of this process if their parent processes are terminated. This allows you to execute commands like `Process.wait` on them or to observe them more easily with tools that rely on the parent-child relationship to find and enumerate processes.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/instacart/child_subreaper.

## License

Copyright (c) 2025 Maplebear Inc. dba Instacart. All rights reserved. See included LICENSE file for details.