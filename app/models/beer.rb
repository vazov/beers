class Beer < ActiveRecord::Base
  default_scope { order('name ASC') }

  belongs_to :brewery

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      where(nil)
    end
  end
end
