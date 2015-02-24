# Net::FTP::PortCommand

[![Gem Version](https://badge.fury.io/rb/net-ftp-port_command.svg)](http://badge.fury.io/rb/net-ftp-port_command)

This gem enables Net::FTP to send FTP `PORT` command.

If your FTP client have to use active mode and over NAT, this gem may be helpful.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'net-ftp-port_command'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install net-ftp-port_command

## Usage

```ruby
require 'net/ftp'
require 'net/ftp/port_command'

ftp = Net::FTP.new("exmaple.com", "ussername", "password")
ftp.port("203.0.113.0", 10020) # Set listening address and port of Data connection.
ftp.list # => ["foo.txt", "bar.txt"]
```

After address or port was set once, it will be effective until explicitly removed.

```ruby
ftp.port(nil, nil) # default behavior of Net::FTP
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/net-ftp-port_command/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
