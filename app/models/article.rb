class Article < ApplicationRecord
    validates :author, presence: true
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
end
