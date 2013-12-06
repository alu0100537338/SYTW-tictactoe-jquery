require 'dm-core'
require 'dm-migrations'

class Usuario
	include DataMapper::Resource
	property :id, Serial
	property :usuario, String
	property :num_ganadas, Integer
	property :num_perdidas, Integer
end

DataMapper.finalize

get '/usuarios' do
	@usuarios = Usuario.all
	haml :usuarios
end
