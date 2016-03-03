# Load path and gems/bundler
$LOAD_PATH << File.expand_path(File.dirname(__FILE__))

require "bundler"
Bundler.require

# Local config
require "find"

%w{config/initializers lib}.each do |load_path|
  Find.find(load_path) { |f|
    require f unless f.match(/\/\..+$/) || File.directory?(f)
  }
end

# load sass
require 'sass/plugin/rack'

Sass::Plugin.options[:style] = :compressed
Sass::Plugin.options[:load_paths] = ['public/stylesheets/sass/application.sass']
use Sass::Plugin::Rack

# Load app
require "pbnj"
run Pbnj
