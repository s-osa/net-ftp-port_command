require 'net/ftp'
require File.expand_path("../../lib/net/ftp/port_command", __FILE__)

require 'rspec/its'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  if config.files_to_run.one?
    config.default_formatter = 'doc'
  end

  config.warnings = true
  config.order = :random
end
