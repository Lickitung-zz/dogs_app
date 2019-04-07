class Api::DogsController < ApplicationController
  def index
    @dogs = Dog.all
    render "index.json.jbuilder"
  end
end
