class PagesController < ApplicationController
  def index
    @resources = Resource.all
  end

end
