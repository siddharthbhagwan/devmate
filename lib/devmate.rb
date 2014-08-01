require "devmate/engine"

module Devmate

  class << self
    mattr_accessor :position, :timeout, :maxVisible, :close_with, :call_timeout
    self.position = 'topRight'
    self.timeout = '10000'
    self.maxVisible = '1'
    self.close_with = 'click'
    self.call_timeout = '20000'
  end

  # this function maps the vars from your app into your engine
  def self.setup(&block)
    yield self
  end

end
