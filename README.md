## インストール方法

### Ruby インストール（必要に応じ）

```bash
brew upgrade rbenv ruby-build
rbenv install 3.0.4
```

### Bundler インストール（必要に応じ）

```bash
gem install bundler -v "2.3.15"
```

### Gem のインストール

```
bundle config set path '.bundle'
bundle install
```

### データベースの作成

```
bin/rails db:create
bin/rails db:migrate
bin/rails db:migrate RAILS_ENV=test
```

## 起動方法

```
bin/rails s
```

その後、ブラウザで http://localhost:3000/ にアクセスする。

## テスト実行方法

```
bin/rspec
```

## Rubocop による静的解析

```
bundle exec rubocop
```
