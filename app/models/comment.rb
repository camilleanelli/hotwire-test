class Comment < ApplicationRecord
  belongs_to :ticket
  attr_accessor :content
end
