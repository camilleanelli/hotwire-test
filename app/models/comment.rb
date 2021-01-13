class Comment < ApplicationRecord
  belongs_to :ticket
  attr_accessor :content

  broadcasts_to :ticket
end
