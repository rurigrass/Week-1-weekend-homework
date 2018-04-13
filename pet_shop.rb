#1
def pet_shop_name(shop)
  return shop[:name]
end

#2
def total_cash(cash)
  return cash[:admin][:total_cash]
end

#3
def add_or_remove_cash(cash, add)
  return cash[:admin][:total_cash] += add.to_i
end

#4
