class Lecture < ApplicationRecord
    belongs_to :course
    

    has_and_belongs_to_many :users

    acts_as_commontable # dependent: :destroy
    acts_as_votable
end
