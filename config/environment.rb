require 'rubygems'
require 'bundler/setup'
require 'lotus/setup'
require 'pry'
require_relative '../lib/bookshelf'
require_relative '../apps/web/application'


Pry.hooks.delete_hook(:before_session, :default)


Lotus::Container.configure do
  mount Web::Application, at: '/'
end
