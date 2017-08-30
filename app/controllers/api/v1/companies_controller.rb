class Api::V1::CompaniesController < ApplicationController

    def create
      @company = Company.new(company_params)
      if @company.save
        render json: @company
      else
        # show some error
        render json: { message: "Company not created"}
      end
    end

    def update
      @company = Company.find(params[:id])
      if @company.update(company_params)
        render json: @company
      else
        render json: { message: "Company not updated"}
      end
    end

    ##TODO
    #DESTROY

    private

    def company_params
      params.require(:company).permit(:name, :location, :active, :user_id)
    end

end
