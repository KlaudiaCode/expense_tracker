require 'sequel'
DB = Sequel.connect(adapter: 'sqlite', host: 'localhost', database: ENV.fetch('RACK_ENV', 'development'))