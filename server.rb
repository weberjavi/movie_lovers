require "sinatra"
require "sinatra/reloader" if development? # Comprueba si el servidor está en desarrollo y en cuanto haces un cambio se resetea el servidor
require "pry" if development?

require_relative "./lib/general.rb"

