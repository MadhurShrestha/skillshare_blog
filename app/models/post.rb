class Post < ApplicationRecord
  validates :title, presence: true
  validates :summary, presence: true
  validates :body, presence: true

  belongs_to :category

#callbacks validation/save/create/update/destroy

  after_create :update_total_post_count

  scope :active, -> { where(active: true) }
  scope :order_by_latest_first, -> { order(created_at: :desc)}
  scope :limit_2, -> { limit( 2 )}


  private

  def update_total_post_count
    #update_category total count column to show total posts count
    category.increment(:total_count,1).save
  end

  def details
    "This post was created on #{ created_at.strftime("%d/%m/%Y") }."
  end

  def self.total
    #returns a  total number of posts
    count
  end

end
