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
  return petssold[:admin][:pets_sold] += sold
end

#7
def stock_count(stock)
  return stock[:pets].length
end

#8 #9
def pets_by_breed(hash, breed)
  total_breed = []
    for pets in hash[:pets]
      total_breed.push(breed) if pets[:breed] == breed
    end
  return total_breed
end

#10 #11
def find_pet_by_name(hash, name)
  for pets in hash[:pets]
    if (pets[:name] == name)
      return pets
    end
  end
  return nil
end

#12
def remove_pet_by_name(hash, petToBeRemoved)
 # pet = find_pet_by_name(hash, petToBeRemoved)
 # hash[:pets].delete(pet)
 hash[:pets].delete(find_pet_by_name(hash, petToBeRemoved))
end

#13
def add_pet_to_stock(hash, newPet)
  # newnumber = hash[:pets] << newPet
  # return newnumber.length
  hash[:pets] << newPet
  return hash[:pets].length
end


#14
def customer_cash(customer)
  return customer[:cash]
end

#15
def remove_customer_cash(customer, cash)
  return customer[:cash] -= cash
end

#16
def customer_pet_count(customer)
  return customer[:pets].count
end

#17
def add_pet_to_customer(customer, newPet)
  customer[:pets] << newPet
  return customer[:pets].count
end

#18, #19
def customer_can_afford_pet(customer, newPet)
  if newPet[:price] > customer[:cash]
    return false
  end
  return true #does this go after end?
end

#20
# def sell_pet_to_customer(hash, pet, customer)
#   customer[:pets] << pet
#   return customer[:pets].count
# end
def sell_pet_to_customer(hash, pet, customer)
  add_pet_to_customer(customer, pet)
  increase_pets_sold(hash, 1) #interger too specific why not pet.count.to_i?
  remove_customer_cash(customer, 900)
  add_or_remove_cash(hash, 900)
end

#21
# def sell_pet_to_customer_non(hash, pet, customer)
