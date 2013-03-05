require 'sinatra'
require 'td'
require 'td/client'
load 'config.rb'

# initialize the logger
# @see http://docs.treasure-data.com/articles/ruby
TreasureData::Logger.open(
  'production',
  :apikey=>get_config()[:apikey],
  :auto_create_table=>true)

get '/' do
  @apikey = get_config()[:apikey]

  # retrieve list of tables
  if @apikey && !@apikey.empty?
    @tables = []
    cln = TreasureData::Client.new(@apikey)
    cln.databases.each { |d| @tables += cln.tables(d.name) }
  end

  # post an example record
  case params[:a].to_s
  when 'post'
    TD.event.post('login', {:uid=>123})
    TD.event.post('access', {:uid=>123, :url=>'openshift'})
  end

  erb :index
end
