require "application_system_test_case"

# run rails test:system in terminal
class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
    take_screenshot
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "ask", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
    take_screenshot
  end

  test "asking a question yields an order from the coach" do
    visit ask_url
    fill_in "ask", with: "Hello?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
    take_screenshot
  end

  test "saying you're going to work yields a happy answer from the coach" do
    visit ask_url
    fill_in "ask", with: "I am going to work"
    click_on "Ask"

    assert_text "Great!"
    take_screenshot
  end
end
