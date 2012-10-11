class Post < ActiveRecord::Base
  attr_accessible :link, :title
  validates :title, :presence => {:message => ' column is required son'}
  has_many :comments, :dependent => :destroy

  #callback
  before_save :add_tag

  default_scope :limit => 100

  scope :top, :order => {:max, :created_at}
  scope :latest, :order => {:created_at}
  
  def self.filter(param)
    if param == 'top'
      self.top
    elsif param == 'latest'
      self.latest
    end
  end
  
  def add_tag
  end

end
