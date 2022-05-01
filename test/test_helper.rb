require 'rack/test'
require 'test/unit'

# Always use local Rulers first
gem_dir = File.join(__dir__, "..", "lib")
# $LOAD_PATH => It makes sure that requiring “rulers” will require the local
# one in the current directory rather than, say, the one you installed
# as a gem.
$LOAD_PATH.unshift File.expand_path(gem_dir)

require "rulers"
