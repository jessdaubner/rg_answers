class Answer < ActiveRecord::Base
  attr_accessible :description, :question_id, :votes

  belongs_to :question

  scope :by_votes, :order => "votes DESC"
end
