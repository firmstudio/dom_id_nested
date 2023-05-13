# DomIdNested

DomIdNested is a Ruby on Rails gem that extends the functionality of the built-in `dom_id` helper, making it more versatile by allowing it to work with a combination of ActiveRecord models and custom strings.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "dom_id_nested"
```

And then execute:

```zsh
$ bundle install
```

## Usage

With DomIdNested, you can easily generate DOM IDs by passing a combination of ActiveRecord models and custom strings to the dom_id helper. Here’s an example:

```ruby
user = User.find(1)

dom_id(user, "edit_button") #=> "user_1_edit_button"
```

You can also pass multiple ActiveRecord models and strings as arguments:

```ruby
post = Post.find(1)
comment = Comment.find(2)

dom_id(user, post, comment, "content") #=> "user_1_post_1_comment_2_content"
```

The gem will automatically omit any blank records passed:

```ruby
dom_id(user, nil, "", "edit_button") #=> "user_1_edit_button"
```

If all records are blank, the dom_id helper will return nil:

```ruby
dom_id(nil, "") #=> nil
```

## License

The gem is available as open source under the terms of the MIT License » https://opensource.org/licenses/MIT.
