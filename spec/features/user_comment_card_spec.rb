require 'rails_helper'

feature 'User comments a card' do
  scenario 'successfully' do
    #setup
    card = Card.create(back: 'Book', front: 'Livro', author: 'Joao')
    #steps
    visit card_path(card)
    fill_in 'Autor', with: 'Alan'
    fill_in 'Comentario', with: 'Este card me ajudou'
    click_on 'Enviar Comentário'
    #expectations
    expect(page).to have_content 'Pt: Livro -> En: Book'
    expect(page).to have_content 'Alan comentou:'
    expect(page).to have_content 'Este card me ajudou'
  end
end
