# frozen_string_literal: true

require_relative "json_flit/version"
require_relative "json_flit/registry"
require_relative "json_flit/builder"
require_relative "json_flit/factory/base"
Dir["#{File.dirname(__FILE__)}/json_flit/factory/**/*.rb"].each { |f| require f }

module JsonFlit
  class Error < StandardError; end
  # Your code goes here...
end
