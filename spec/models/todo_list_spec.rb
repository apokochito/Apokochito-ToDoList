require 'rails_helper'

RSpec.describe TodoList, type: :model do
  #Define the user
  let (:user) do
    user = User.new(
      email: 'someone@example.com',
      password: 'some_password_to_test')
    user.save
    user
  end

  #Define the user using the list
  let (:list) do
    list = user.todo_lists.new(
      title: 'New list',
      description: 'Description')
    list.save
    list
  end

  context 'Validating the creation of the list' do
    it 'Should be created' do
      list = user.todo_lists.new(
        title: 'New list',
        description: 'Description').save
      expect(list).to eq(true)
    end
  end

  it 'Should the list create a item' do
    item = list.todo_items.new(content: 'ToDo').save
    expect(item).to eq(true)
  end

  context 'Updating the list' do
    it 'Should the list be updated' do
      list.update!(title: 'Other title')
      expect(list.title).to eq('Other title')
    end
  end

end
