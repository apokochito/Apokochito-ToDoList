require 'rails_helper'

RSpec.describe TodoItem, type: :model do
    #Define the user
    let (:user) do
      user = User.new(
        email: 'someone@example.com',
        password: 'some_password_to_test')
      user.save
      user
    end

    #Define the user using the list
    let(:list) do
      list = user.todo_lists.new(
        title: 'New list',
        description: 'Description')
      list.save
      list
    end

    #Define the user using the item
    let(:item) do
      item = user.todo_items.new(
        content: 'New item',
        done: false)
      item.save
      item
    end

  context 'Validating the content of the item' do
    it 'Should has content' do
      new_item = list.todo_items.new(
        content: 'Content').save
      expect(new_item).to eq(true)
    end
  end

  context 'Validating the creation of the item' do
    it 'Should be created' do
      new_item = list.todo_items.new(
      content: 'Content').save
      expect(new_item).to eq(true)
    end
  end
end
