def nyc_pigeon_organizer(data)
  # write your code here!	 
  bird_hash = {}

   data.each do |keys, values|
  # K & v iterate through data.

     values.each do |k2, v2|
    # Kk & vv iterate through v.

       v2.each do |name|
      # Name iterates through vv.

         if !bird_hash[name]
        # If this is falsey then move to next statement.

           bird_hash[name] = {}
          # If a hash for that desired name key does not exist yet (won't on first iteration), create an empty hash.

         end

         if !bird_hash[name][keys]
        # If this is falsey then move to next statement.

           new_hash[name][keys] = []
          # If an array for that desired value does not exist yet (won't on first iteration), create an empty array.

         end

         new_hash[name][keys] << k2.to_s
        # Turn kk (originally the :color keys) into a string and add to the end of the relevant item in iteration.

       end
    end
  end

   new_hash

 end	