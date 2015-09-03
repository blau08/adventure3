configure :production, :development do
  db = URI.parse(ENV['postgres://gshellrwccuhoe:3qt8rJKYucDnuZZr0_1SzJ0V0i@ec2-107-21-106-196.compute-1.amazonaws.com:5432/d9s86kv7vpf7i9'] || 'postgres://localhost/app_development')
  ActiveRecord::Base.establish_connection(
  adapter: db.scheme == 'postgres' ? 'postgresql' : db.scheme,
  host: db.host,
  username: db.user,
  password: db.password,
  database: db.path[1..-1],
  encoding: 'utf8'
  )
end
