require 'rails_helper'

describe Category do
  describe "validations" do
    context "invalid attributes" do
      it "is invalid without a title" do
        category = Category.new()
        expect(category).to be_invalid
      end

      it "has a unique title" do
        Category.create(title: "Tech")
        category = Category.new(title: "Tech")
        expect(category).to be_invalid
      end
    end

    context "valid attributes" do
      it "is valid with a title" do
        category = Category.new(title: "Tech")
        expect(category).to be_valid
      end
    end
  end

  # describe "relationships" do
  #   it "has many jobs" do
  #     category = Category.new(title: "Dropbox")
  #     expect(category).to respond_to(:jobs)
  #   end
  # end
end
