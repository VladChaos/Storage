class Child < ActiveRecord::Base
	belongs_to :mother
  	attr_accessible :name, :surname, :age, :mother_id

  	validates :age, :numericality => {:only_integer => true}
end
