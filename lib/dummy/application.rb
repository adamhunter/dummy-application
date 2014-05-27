ENV['RAILS_ENV'] = 'test'
# rspec sets ENV['BUNDLE_GEMFILE']

require 'rubygems'
require 'bundler'

Bundler.setup

require "action_controller/railtie"

Bundler.require

ApplicationController = Class.new(ActionController::Base)

module Dummy
  def self.gem_root
    Pathname.new(File.dirname ENV['BUNDLE_GEMFILE'])
  end

  def self.rails_root
    Pathname.new(gem_root).join(*%w[spec dummy])
  end

  class Application < ::Rails::Application
    config.root                                       = Dummy.rails_root
    config.eager_load                                 = Rails.env.production?
    config.cache_classes                              = !Rails.env.development?
    config.serve_static_assets                        = true
    config.static_cache_control                       = "public, max-age=3600"
    config.whiny_nils                                 = true
    config.consider_all_requests_local                = true
    config.action_controller.perform_caching          = false
    config.action_dispatch.show_exceptions            = false
    config.active_support.deprecation                 = :stderr
    config.action_mailer.delivery_method              = :test
    config.action_controller.allow_forgery_protection = false
    config.active_support.deprecation                 = :stderr
    config.eager_load                                 = false
    config.secret_token                               = 'http://s3-ec.buzzfed.com/static/enhanced/webdr03/2013/5/25/8/anigif_enhanced-buzz-11857-1369483324-0.gif'
  end
end

Dummy::Application.initialize!
