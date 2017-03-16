require 'rails_helper'

describe "Landing" do
  it "should show a Hello World text" do
    visit root_path
    expect(page).to have_content "Hello World"
  end
end
