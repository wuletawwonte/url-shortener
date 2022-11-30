class ResourcesController < ApplicationController
  def index
    @resources = Resource.all.order(created_at: :desc)
  end

  def create
    @resource = Resource.new(resource_params)

    if @resource.save
      @resources = Resource.all.order(created_at: :desc)
      render partial: "resources", locals: { resources: @resources }, notice: 'Successfully added.'
    else
      redirect_to :index, status: :unprocessable_entity
    end
  end

  def bounce
    @resource = Resource.find_by_short_url(params["short_url"])
    puts "sdfjsldkfjsldkfjsldkfsdfsdf: #{@resource.long_url}"
    redirect_to @resource.long_url, allow_other_host: true
  end

  private

    def resource_params
      params.permit(:long_url)
    end

end
