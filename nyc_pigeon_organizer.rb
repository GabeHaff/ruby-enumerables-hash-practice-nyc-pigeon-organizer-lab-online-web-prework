def nyc_pigeon_organizer(data)
  pigeon_list = {
   new_hash = {}
  data.each do |key, value|
    value.each do |new_value, names|
      names.each do |name|
        # puts name
        if !new_hash[name]
          new_hash[name] = {}
        end

         if !new_hash[name][key]
          new_hash[name][key] = [new_value.to_s]
          else
          new_hash[name][key] << new_value.to_s
        end
      end
    end
  end
  new_hash
end	end