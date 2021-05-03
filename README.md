# README

This README would normally document whatever steps are necessary to get the
application up and running.

##########################
DB config
Inside the config folder change databse configurations in databse.yml

default: &default
  adapter: mysql2
  encoding: utf8mb4
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: root
  password: root
  host: localhost

development:
  <<: *default
  database: newsletter

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  <<: *default
  database: newsletter
  
#############################
Migrations
I have used mysql as a Database and there is a migration for the user table
command:   rails db:migrate



#####################
Extra Ball 1 (Optional):

I have done Extra Ball 1 but there is some SSL issue in my local.
Uncomment # validate :check_email and set SMTP configuration in environmrnt.rb file

# ActionMailer::Base.default_content_type = "text/html"
# config.action_mailer.delivery_method = :smtp

# config.action_mailer.smtp_settings = {
#     address:              'smtp.gmail.com',
#     port:                 587,
#     domain:               'example.com',
#     user_name:            '<username>',
#     password:             '<password>',
#     authentication:       'plain',
#     enable_starttls_auto: true

# }
