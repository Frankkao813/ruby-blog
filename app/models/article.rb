class Article < ApplicationRecord
    # add concerns
    include Visible
    # add the other side of association
    has_many :comments

    validates :author, presence: true
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }

end
