config = YAML::load_file('config/application.yml')
ActiveRecord::Base.default_timezone = :utc
ActiveRecord::Base.establish_connection(config[ENV['RACK_ENV']]['database'])
