class Category < ApplicationRecord
  belongs_to :parent, class_name: "Category"
  has_many :children, class_name: "Category", foreign_key: :parent_id

  scope :with_children, ->() { joins(:children).distinct }
  scope :top_level, ->() { where(parent_id: nil) }

  before_save :ensure_one_root

  def self.root
    self.top_level.first
  end

  def self.make_root(other)
    self.transaction do
      old_root = self.root
      old_root.update_column(:parent_id, other.id)
      other.update_column(:parent_id, nil)
    end
  end

  def siblings
    if parent
      parent.children.where.not(id: self.id)
    else
      Category.top_level.where.not(id: self.id)
    end
  end

  def has_parent?
    self.parent.present?
  end

  def is_leaf?
    self.children.empty?
  end

  def is_root?
    self.parent.nil?
  end

  def make_root
    self.class.make_root(self)
  end

  private

  def ensure_one_root
    return false if self == self.class.root
    self.parent = self.class.root if parent_id.nil?
  end
end
