# db/seeds.rb

# ユーザーデータの作成
users = [
  { email: 'alice@example.com', password: 'password123', nickname: 'AliceCoder' },
  { email: 'bob@example.com', password: 'password456', nickname: 'BobDev' },
  { email: 'carol@example.com', password: 'password789', nickname: 'CarolJS' }
]

users.each do |user_attrs|
  user = User.new(user_attrs)
  user.save!
end

# Postデータの作成、より具体的な学習記録として
posts = [
  {
    title: 'Rubyの基本を学び始めました',
    content: '今日はRubyの基本について学び始めました。配列やハッシュについて理解が深まりました！',
    user_id: User.find_by(email: 'alice@example.com').id
  },
  {
    title: 'Railsチュートリアルを完了！',
    content: 'Railsチュートリアルを通して、MVCの概念やデータベースの操作について学ぶことができました。自分のプロジェクトを始めるのが楽しみです。',
    user_id: User.find_by(email: 'bob@example.com').id
  },
  {
    title: 'JavaScriptの非同期処理',
    content: '非同期処理の概念がようやく理解できた気がします。Promiseとasync/awaitの違いについても学びました。',
    user_id: User.find_by(email: 'carol@example.com').id
  }
]

posts.each do |post_attrs|
  post = Post.new(post_attrs)
  post.save!
end

puts 'Seed data created successfully!'
