class WelcomeController < ApplicationController
  def index
    @addresses = if params[:postcode]
      JSON.parse(AddressApi.new.list_properties(params[:postcode]))["result"]["addresses"]
    end
  end
end
