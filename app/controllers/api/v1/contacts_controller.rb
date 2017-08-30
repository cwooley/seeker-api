class Api::V1::ContactsController < ApplicationController

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      render json: @contact
    else
      # show some error
      render json: { message: "Contact not created"}
    end
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update(contact_params)
      render json: @contact
    else
      render json: { message: "Contact not updated"}
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :phone_number, :email, :company_id)
  end

end
