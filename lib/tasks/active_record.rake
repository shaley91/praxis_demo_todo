require 'active_support'

module Rails
  def self.application
    Struct.new(:config, :paths) do
    end.new(config, paths)
  end

  def self.config
    config = YAML::load_file('config/application.yml')
    db_config = config.collect { |k, v| [k,  v['database']] }.to_h
    Struct.new(:database_configuration).new(db_config)
  end

  def self.paths
    { 'db/migrate' => ["#{root}/db/migrate"] }
  end

  def self.env
    ActiveSupport::StringInquirer.new(ENV['RACK_ENV'] || 'development')
  end

  def self.root
    File.expand_path('../../../', __FILE__)
  end
end

RAILS_ENV = Rails.env
task :rails_env do
  RAILS_ENV
end

Rake.load_rakefile 'lib/tasks/environment.rake'
Rake.load_rakefile 'active_record/railties/databases.rake'
