class Mother < ActiveRecord::Base
	has_many :children, :dependent => :destroy
  	attr_accessible :age, :name, :surname, :job

  	validates :age, :numericality => {:greater_than => 10}
end
