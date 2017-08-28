require 'rails_helper'

RSpec.describe "questions/index", type: :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        :user_id => 2,
        :title => "Title",
        :body => "Body"
      ),
      Question.create!(
        :user_id => 2,
        :title => "Title",
        :body => "Body"
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Body".to_s, :count => 2
  end
end
