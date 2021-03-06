require('spec_helper')

describe('path to view all bands page', :type => :feature) do
  it('adds and displays new bands') do
    visit('/bands')
    fill_in('name', :with => 'ramones')
    click_button('Add!')
    expect(page).to have_content('Ramones')
  end
end

describe('path to view details of a particular band', :type => :feature) do
  it('select and view venues for a specific band') do
    visit('/bands')
    fill_in('name', :with => 'smiths')
    click_button('Add!')
    click_link('Smiths')
    expect(page).to have_content('Smiths')
  end
end
