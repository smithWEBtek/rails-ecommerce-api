DATA_items = {
  :item_keys =>
    ["title", "inventory", "price", "category_id"],
  :items ="> [
    ["Zelda 7 Rupee Set", 3, "$19.95", 1],
    ["The Zelda inspired wall clock", 3, "$38.88", 1],
    ["Map of Hyrule from Zelda", 3, "$20.00", 1],
    ["Nintendo Switch Padded Dock Cover", 3, "$13.00", 1],
    ["Zelda Prop Kit", 3, "$30.00", 1],
    ["Ready to Ship! Zelda Key Holder", 3, "$15.00", 1],
    ["Zelda Inspired Majora Mask", 3, "$129.6", 1],
    ["The Zelda travel sized amiibo", 3, "$8.50 ", 1], 
    ["Rusted Master Sword Miniature Prop", 3, "$19.40", 1] 
  ]
}

def make_items
  DATA_items[:items].each do |item|
    new_item = Item.new
    item.each_with_index do |attribute, i|
      new_item.send(DATA_items[:item_keys][i]+"=", attribute)
    end
    new_item.save
  end
end

def main
    make_items
end
