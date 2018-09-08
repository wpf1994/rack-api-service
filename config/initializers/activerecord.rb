Grape::ActiveRecord.configure_from_file! "config/database.yml"
# Grape::ActiveRecord.configure_from_url! ENV['DATABASE_URL']
# Grape::ActiveRecord.configure_from_hash!(adapter: "postgresql", host: "localhost", database: "db", username: "user", password: "pass", encoding: "utf8", pool: 10, timeout: 5000)