require 'helpers'
require 'simplecov'

SimpleCov.start do
  add_filter '/spec/'
end

require 'monk/id'

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
  config.include Helpers

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
