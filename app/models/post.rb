class Post < ActiveRecord::Base
  has_many :comments, :dependent => :destroy
  has_many :tags, :dependent => :destroy

  def all_tags
    tags.map { |tag| tag.name }
  end
end
