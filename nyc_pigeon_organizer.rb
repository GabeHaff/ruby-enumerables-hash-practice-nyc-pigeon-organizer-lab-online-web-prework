def nyc_pigeon_organizer(data)
  # write your code here!	 
  bird_hash = {}
   data.each do |keys, values|
     values.each do |k2, v2|
       v2.each do |name|
         if !bird_hash[name]
           bird_hash[name] = {}
         end
         if !bird_hash[name][keys]
           bird_hash[name][keys]=[]
         end
         bird_hash[name][keys] << k2.to_s

       end
    end
  end

   bird_hash

 end	