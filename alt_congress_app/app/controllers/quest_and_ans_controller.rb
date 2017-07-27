class QuestAndAnsController < ApplicationController
  before_action :set_quest_and_an, only: [:show, :update, :destroy]

  # GET /quest_and_ans
  def index
    @quest_and_ans = QuestAndAn.all
    render json: {status: 200, quest_and_ans: quest_and_ans}
  end

  # GET /quest_and_ans/1
  def show
            quest_and_an = User.find(params[:id])
        render json: {status: 200, quest_and_an: quest_and_an}
  end

  # POST /quest_and_ans
  def create
    @quest_and_an = QuestAndAn.new(quest_and_an_params)

    if @quest_and_an.save
      render json: @quest_and_an, status: :created, location: @quest_and_an
    else
      render json: @quest_and_an.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quest_and_ans/1
  def update
    if @quest_and_an.update(quest_and_an_params)
      render json: @quest_and_an
    else
      render json: @quest_and_an.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quest_and_ans/1
  def destroy
    @quest_and_an.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quest_and_an
      @quest_and_an = QuestAndAn.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quest_and_an_params
      params.require(:quest_and_an).permit(:question, :answer)
    end
end
