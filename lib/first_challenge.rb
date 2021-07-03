def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  contacts.each do |contact, info|
    info.each do |trait, list|
      if list.kind_of?(Array)
        list.each_with_index do |item, index|
          if item == "strawberry"
            list.delete_at(index)
          end
        end
      end
    end
  end


  #remember to return your newly altered contacts hash!
  contacts
end

