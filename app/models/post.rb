class Post < ApplicationRecord
    validates :topic, presence: true
    validates :content, presence: true
    validates :author, length:  {maximum: 12}
end
