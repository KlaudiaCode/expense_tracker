RSpec.configure do |c|
  c.before(:suite) do
    Sequel.extension :migration
    Sequel::Migrator.run(DB, 'config/db/migrations')
    DB[:expenses].truncate
  end
end