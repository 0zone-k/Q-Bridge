require 'rails_helper'

RSpec.describe Question, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @question = FactoryBot.build(:question, user: @user)
  end

  describe '質問投稿機能' do
    context '投稿できる場合' do
      it 'titleとcontent、category_id,
      affilation_id,deadlineが存在すれば登録できる' do
        expect(@question).to be_valid
      end
      it '画像がなくても投稿できる' do
        @question.image = ''
        expect(@question).to be_valid
    end
    context '投稿できない場合' do
      it 'titleが空では登録できない' do
        @question.title = ''
        @question.valid?
        expect(@question.errors.full_messages).to include "Title can't be blank"
      end
      it 'contentが空では登録できない' do
        @question.content = ''
        @question.valid?
        expect(@question.errors.full_messages).to include "Content can't be blank"
      end
      it 'category_idが空では登録できない' do
        @question.category_id = 1
        @question.valid?
        expect(@question.errors.full_messages).to include "Category can't be blank"
      end
      it 'affilation_idが空では登録できない' do
        @question.affilation_id = 1
        @question.valid?
        expect(@question.errors.full_messages).to include "Affilation can't be blank"
      end
      it 'deadlineが空では登録できない' do
        @question.deadline = ''
        @question.valid?
        expect(@question.errors.full_messages).to include "Daed line can't be blank"
      end
      it 'userが紐づいていないと登録できない' do
        @item.user = nil
        @item.valid?
        expect(@item.errors.full_messages).to include 'User must exist'
      end
    end
  end
end
end