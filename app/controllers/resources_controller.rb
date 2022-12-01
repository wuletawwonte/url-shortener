class ResourcesController < ApplicationController
  def index
    @resources = Resource.all.order(created_at: :desc).page params[:page]
  end

  def create
    @resource = Resource.new(resource_params);

    if @resource.save
      @resources = Resource.all.order(created_at: :desc).page params[:page]
      render partial: "resources", locals: { resources: @resources }, notice: 'URL successfully shortened.'
    else
      redirect_to :index, status: :unprocessable_entity
    end
  end

  def bounce
    @resource = Resource.find_by_short_url(params["short_url"])
    @resource.update(clicked: @resource.clicked + 1);
    redirect_to @resource.long_url, allow_other_host: true
  end

  private

    def resource_params
      params.permit(:long_url, :short_url)
    end

end
