class VegMenu < Menu
  has_many :menu_items
  has_many :items, through: :menu_items
end