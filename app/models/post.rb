class Post < ActiveRecord::Base
  has_many :comments
  
  validates_length_of :title, :minimum => 2, :message => "Este titulo es demasiado corto"
  validates_length_of :title, :maximum  => 50, :message => "El titulo es demasiado largo"
  validates_uniqueness_of :title, :message => "Este titulo ya existe"
  
  validates_length_of :body, :minimum => 2, :message => "Debes introducir más contendo"
  validates_length_of :body, :maximum  => 20000, :message => "El post es demasiado grande"
end
