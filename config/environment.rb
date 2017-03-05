# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :port           => ENV['MAILGUN_SMTP_PORT'],
  :address        => ENV['MAILGUN_SMTP_SERVER'],
  :user_name      => ENV['MAILGUN_SMTP_LOGIN'],
  :password       => ENV['MAILGUN_SMTP_PASSWORD'],
  :domain         => 'protected-shelf-77246.herokuapp.com',
  :authentication => :plain,
}

#ActionMailer::Base.smtp_settings = {
#  :port           => 587,
#  :address        => 'smtp.sendgrid.net',
#  :user_name      => ENV['SENDGRID_USERNAME'],
#  :password       => ENV['SENDGRID_PASSWORD'],
#  :domain         => 'protected-shelf-77246.herokuapp.com',
#  :authentication => :plain,
#  :enable_starttls_auto => true
#}
ActionMailer::Base.delivery_method = :smtp