# Load the Rails application.
require_relative 'application'
require 'mail'

# Initialize the Rails application.
Rails.application.initialize!

Time::DATE_FORMATS[:reserva_time] = "%d %b %Y - %I:%M%p"



