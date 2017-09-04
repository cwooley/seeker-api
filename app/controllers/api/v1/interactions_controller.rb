class Api::V1::InteractionsController < ApplicationController

  def create
    @interaction = Interaction.new(interaction_params)
    if @interaction.save
      render json: @interaction
    else
      # show some error
      render json: { message: "Interaction not created"}
    end
  end

  def update
    @interaction = Interaction.find(params[:id])
    if @interaction.update(interaction_params)
      render json: @interaction
    else
      render json: { message: "Interaction not updated"}
    end
  end

  def destroy
    @interaction = Interaction.find(params[:id])
    @interaction.destroy!
    render json: @interaction
  end

  ##TODO
  #DESTROY

  private

  def interaction_params
    params.require(:interaction).permit(:kind, :status, :company_id)
  end

end
