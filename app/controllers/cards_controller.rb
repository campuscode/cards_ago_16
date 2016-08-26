class CardsController < ApplicationController
  before_action :set_card, only: [:show, :edit, :update, :destroy]

  def show
    @comment = Comment.new
  end

  def destroy
    @card.destroy
    redirect_to cards_path
  end

  def index
    @cards = Card.all
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_parameters)
    if @card.save
      redirect_to @card
    else
      flash[:alert] = 'Você deve preencher front'
      render :new
    end
  end

  def edit
  end

  def update
    @card.update(card_parameters)
    redirect_to @card
  end

  private
  def card_parameters
    params.require(:card).permit(:front, :back, :author)
  end

  def set_card
    @card = Card.find(params[:id])
  end


end
