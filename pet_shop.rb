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
def increase_pets_sold(petssold, sold)
  return petssold[:admin][:pets_sold] += sold.to_i
end

#7
def stock_count(stock)
  return stock[:pets].length
end

#8
def pets_by_breed(hash, breed)
  total_breed = []
    for pets in hash[:pets]
      total_breed.push(breed) if pets[:breed] == breed
    end
  return total_breed
end

#9
def find_pet_by_name(hash, name)
  for pets in hash[:pets]
    if (pets[:name] == name)
      return pets
    end
  end
  return nil
end
