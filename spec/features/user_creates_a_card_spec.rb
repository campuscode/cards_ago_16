require 'rails_helper'

feature 'User creates a card' do
  scenario 'successfully' do
    visit new_card_path

    fill_in 'Frente', with: 'Teste'
    fill_in 'Verso', with: 'Test'
    fill_in 'Autor', with: 'Joao'
    click_on 'Enviar'

    expect(page).to have_content 'Pt: Teste -> En: Test'
    expect(page).to have_content 'Enviado por: Joao'
  end

  scenario 'with fail' do
    visit new_card_path

    click_on 'Enviar'

    expect(page).to have_content 'Você deve preencher front'
  end
end
