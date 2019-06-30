require "http"
require "tty-table"
system "clear"
puts "Welcome to the Contacts App"

prompt = TTY::Prompt.new
prompt.select("Select what action you would like to perform", %w(List Create Edit Delete Exit))
