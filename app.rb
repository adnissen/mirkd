require 'sinatra'
require 'mongo'
require 'uri'
require 'digest/sha1'
require 'json'

include Mongo

mongo_client = MongoClient.new("localhost", 27017)
db = mongo_client.db("mydb")
db = MongoClient.new("localhost", 27017).db("mydb")

# a document in the pages collection is just a page title with the markdown
pages = db.collection("lists")

get '/' do
  # read the index html
end

get '/:user/:list' do
  # find the links and display them all nice
end

patch '/:user/:list' do
  # add a new item to the list
end

delete '/:user/:list' do
  # delete the list
end

post '/:user/new' do
  # creates a new list
end

post '/:user/:list/new' do
  # add a new item to the list
end

delete '/:user/:list/delete' do
  # remove an item from that list
end

get '/:user' do
  # find all the users lists
end