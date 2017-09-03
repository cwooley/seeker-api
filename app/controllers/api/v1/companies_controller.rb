class Api::V1::CompaniesController < ApplicationController

    def create
      @company = Company.new(company_params)
      @company.active = true
      ##This will never feel right...
      @company.user_id = JWT.decode(params[:user_id], ENV["jwt_secret"])[0]["user_id"]
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
        render :json => @company.to_json( :include => [:contacts, :interactions ])
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
