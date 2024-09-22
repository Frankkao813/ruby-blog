class Comment < ApplicationRecord
  # add concern
  include Visible
  # sets up active record association
  belongs_to :article

end
