require 'rails_helper'

RSpec.describe Comment, type: :model do
  it 'deveria salvar novo comentário' do
    comment = Comment.new

    expect(comment.persisted?).to eq false

    comment.save

    expect(comment.persisted?).to eq true
  end
end
