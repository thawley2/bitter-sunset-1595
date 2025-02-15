class Project < ApplicationRecord
  validates_presence_of :name, :material
  belongs_to :challenge
  has_many :contestant_projects
  has_many :contestants, through: :contestant_projects

  def num_of_contestants
    contestants.size
  end

  def avg_experience
    contestants.average(:years_of_experience)
  end
end
