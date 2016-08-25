require 'rails_helper'

describe Card do
  describe '#friendly_description' do
    it 'mostrar descricao amigavel com Ola e Hello' do
      card = Card.new(front: 'Ola', back: 'Hello')

      expect(card.friendly_description).to eq 'Pt: Ola -> En: Hello'
    end

    it 'mostrar descricao amigavel com Porta e Door' do
      card = Card.new(front: 'Porta', back: 'Door')

      expect(card.friendly_description).to eq 'Pt: Porta -> En: Door'
    end
  end
end
