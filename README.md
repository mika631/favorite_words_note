# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# favorite_words_note DB設計

## wordsテーブル
|Column|Type|Options|
|------|----|-------|
|wprd|text|null: false|
|image|string|
|person_id|integer|null: false, foreign_key: true|
|genre_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
|comments_id|integer|

### Association
- belongs_to : person
- belongs_to : genre
- belongs_to : user
- has_many : comments

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique:true|
|password|string|null: false|
|encrypted-password|string|null: false|

### Association
has_many : words
has_many : comments

## personsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
has_many : words

## genresテーブル
|Column|Type|Options|
|------|----|-------|
|genre|string|null: false|

### Association
has_many : words

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|text|

### Association
belongs_to : word
belongs_to : user
