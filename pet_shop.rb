#1
def pet_shop_name(shop)
  return shop[:name]
end

#2
def total_cash(cash)
  return cash[:admin][:total_cash]
end

#3, #4
def add_or_remove_cash(cash, add)
  return cash[:admin][:total_cash] = cash[:admin][:total_cash] + add.to_i
  #return cash[:admin][:total_cash] += add.to_i
end

#5
def pets_sold(petssold)
  return petssold[:admin][:pets_sold]
end

#6
