class Project < ActiveRecord::Base
  has_many :tickets, :dependent => :delete_all
  validates :name, :presence => true, :uniqueness => true

  has_many :permissions, :as => :thing
  scope :readable_by, lambda { |user|
    joins(:permissions).where(:permissions => {:action => "view",
                                               :user_id => user.id})
  }

  def self.for(current_user)
    current_user.admin? ? Project : Project.readable_by(current_user)
  end
end
