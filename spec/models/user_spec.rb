require 'rails_helper'

describe User do
  before do
    create(:user, nickname: 'テスト太郎', email: 'test@example.com')
  end

  describe '.first' do
    subject { described_class.first }
    it '事前に作成した通りのUserを返す' do
      expect(subject.nickname).to eq('テスト太郎')
      expect(subject.email).to eq('test@example.com')
    end
  end
end
