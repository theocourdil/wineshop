class ChargesController < ApplicationController
  before_action :amount_to_be_charged

  def new
  end

  def create
    @product = 25100
  end
  private

  def amount_to_be_charged
    @amount = Product.pluck(:price)
  end
end
