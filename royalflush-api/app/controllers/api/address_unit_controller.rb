class Api::AddressUnitController < ApplicationController
  def index
    @address_unit = AddressUnit.all.as_json(include: [:address, :unit])
    render json: @address_unit
  end

end