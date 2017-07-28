class QAndAsController < ApplicationController
  before_action :set_q_and_a, only: [:show, :update, :destroy]

  # GET /q_and_as
  def index
    @q_and_as = QAndA.all

    render json: @q_and_as
  end

  # GET /q_and_as/1
  def show
    render json: @q_and_a
  end

  # POST /q_and_as
  def create
    @q_and_a = QAndA.new(q_and_a_params)

    if @q_and_a.save
      render json: @q_and_a, status: :created, location: @q_and_a
    else
      render json: @q_and_a.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /q_and_as/1
  def update
    if @q_and_a.update(q_and_a_params)
      render json: @q_and_a
    else
      render json: @q_and_a.errors, status: :unprocessable_entity
    end
  end

  # DELETE /q_and_as/1
  def destroy
    @q_and_a.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_q_and_a
      @q_and_a = QAndA.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def q_and_a_params
      params.require(:q_and_a).permit(:question, :answer)
    end
end
