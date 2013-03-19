# Binger

A simple gem that provides a client to Google Web Search API ( https://developers.google.com/web-search/docs/ )

# Install > gem install googler

# Usage

```
require 'googler'

google = Google.new("49EB4B94127F7C7836C96DEB3F2CD8A6D12BDB71")

results = google.search(q="MooTools")

File.open('output.txt', 'w') { |file| file.write(results) }
```

# Installation manually

```
$ git clone git://github.com/thinkphp/googler.git
$ cd googler
$ gem build googler.gemspec
$ gem install ./googler-0.0.1.gem
$ irb
$ irb(main):001:0> require 'googler'
$ => true
$ irb(main):002:0> Googler.new('your-api-key')
$ => #<Googler:0xffb4ae0 @api_key="your-api-key">
$ irb(main):003:0> exit
```