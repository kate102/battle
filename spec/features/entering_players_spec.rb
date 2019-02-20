feature "Entering players" do
  scenario "Player 1 is Kate and Player 2 is Steve" do
    visit '/'
    fill_in( 'Player One', with:'Kate')
    fill_in( 'Player Two', with:'Steve')
    click_button( 'Good To Go!')
    expect(page).to have_content("Player One is Kate and Player Two is Steve")
  end
  scenario "Player 1 is Simon and Player 2 is Luke" do
    visit '/'
    fill_in( 'Player One', with:'Simon')
    fill_in( 'Player Two', with:'Luke')
    click_button( 'Good To Go!')
    expect(page).to have_content("Player One is Simon and Player Two is Luke")
  end
end
