require 'rack'
require 'rack/contrib'
require_relative './server'
require 'rookout'

set :root, File.dirname(__FILE__)
set :views, Proc.new { File.join(root, "views") }

::Rookout.start token: 'c2934d596ad0789f664cb3d97f19a785e8ecbd0b9f90252491f0ccb17dce5651', labels: {env: "dev"}

run Sinatra::Application
