require 'praxis'
require 'praxis/tasks'

task :default => :console
desc "console"
task :console => [:environment] do
  require 'pry'
  binding.pry # rubocop:disable Lint/Debugger
end

Dir[File.dirname(__FILE__) + '/lib/tasks/**/*.rake'].each { |file| import file }
