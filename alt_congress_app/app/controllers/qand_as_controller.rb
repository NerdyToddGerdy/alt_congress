class QandAsController < ApplicationController
  before_action :set_qand_a, only: [:show, :update, :destroy]

  # GET /qand_as
  def index
    @qand_as = QandA.all

    render json: @qand_as
  end

  # GET /qand_as/1
  def show
    render json: @qand_a
  end

  # POST /qand_as
  def create
    @qand_a = QandA.new(qand_a_params)

    if @qand_a.save
      render json: @qand_a, status: :created, location: @qand_a
    else
      render json: @qand_a.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /qand_as/1
  def update
    if @qand_a.update(qand_a_params)
      render json: @qand_a
    else
      render json: @qand_a.errors, status: :unprocessable_entity
    end
  end

  # DELETE /qand_as/1
  def destroy
    @qand_a.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qand_a
      @qand_a = QandA.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def qand_a_params
      params.require(:qand_a).permit(:question, :answer)
    end
end
