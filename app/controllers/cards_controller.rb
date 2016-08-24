class CardsController < ApplicationController
  def show
    @card = Card.find(params[:id])
  end

  def index
    @cards = Card.all
  end

  def new

  end

  def create
    card = Card.new(front: params[:frente],
                    back: params[:verso])
    card.save
    redirect_to card
  end
end
