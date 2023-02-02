class ApplicationController < ActionController::Base
    add_flash_types :danger, :info, :warning, :success, :messages
    before_action :set_query

    def set_query
        @query = Product.ransack(params[:q])
    end
end
