# spec/spec_helper.rb

require 'simplecov'
SimpleCov.start do
  add_filter '.bundle/'
  add_filter 'UI.rb'
end

require 'loader'
require 'client'
require 'admin'
require 'event'
require 'field'
require 'invoice'
require 'reservation'
