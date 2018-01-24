class Api::AddressUnitController < ApplicationController
  def index
    @address_unit = AddressUnit.all
    render json: @address_unit
  end

end