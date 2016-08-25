 require 'rails_helper'

 feature 'User visits a card' do
   scenario 'successfully' do
     #setup
     card = Card.create(front: 'Com sucesso', back: 'successfully')
     #steps
     visit card_path(card)
     #expectations
     expect(page).to have_content 'Pt: Com sucesso -> En: successfully'
   end
 end
