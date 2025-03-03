require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "1- visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
    take_screenshot
  end

  test "2- saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"
    assert_text "I don't care, get dressed and go back to work!"
    take_screenshot
  end

  test "3- coach gets a question" do
    visit ask_url
    fill_in "question", with: "Hello?"
    click_on "Ask"
    assert_text 'Silly question, get dressed and go to work!'
    take_screenshot
  end

  test "4- coach gets happy" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"
    assert_text 'Great!'
    take_screenshot
  end
end
