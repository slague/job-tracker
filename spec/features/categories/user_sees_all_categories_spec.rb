require 'rails_helper'

describe "User sees all categories" do
  scenario "a user sees all the categories" do
    category = Category.create!(title: "Tech")
    category_two = Category.create!(title: "Ed")

    visit categories_path

    expect(page).to have_content("Tech")
    expect(page).to have_content("Ed")
  end

end
