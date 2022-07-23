require 'rails_helper'

RSpec.describe 'Home', type: :system do
  before do
    driven_by :selenium_chrome_headless
  end

  describe 'トップページの検証' do
    it 'Home#top という文字列が表示される' do
      visit root_path

      expect(page).to have_content('Home#top')
    end
  end
end
