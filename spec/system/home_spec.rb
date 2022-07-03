require 'rails_helper'

RSpec.describe 'Home', type: :system do
  before do
    driven_by :selenium_chrome_headless
  end

  describe '/home/top 画面の検証' do
    it 'Home#top という文字列が表示される' do
      visit home_top_path # 名前付きパス

      expect(page).to have_content('Home#top')
    end
  end
end
