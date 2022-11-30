class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
  end

end
