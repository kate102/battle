feature "testing infrastructure" do
  scenario "Homepage has testing infrastructure working!" do
    visit '/'
    expect(page).to have_content("Testing infrastructure working!")
  end
end
