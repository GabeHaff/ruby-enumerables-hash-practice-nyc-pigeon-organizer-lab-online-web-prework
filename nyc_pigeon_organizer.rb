def nyc_pigeon_organizer(data)
  # write your code here!	  new_hash = {}
  # Empty hash to store results.

   data.each do |k, v|
  # K & v iterate through data.

     v.each do |kk, vv|
    # Kk & vv iterate through v.

       vv.each do |name|
      # Name iterates through vv.

         if !new_hash[name]
        # If this is falsey then move to next statement.

           new_hash[name] = {}
          # If a hash for that desired name key does not exist yet (won't on first iteration), create an empty hash.

         end

         if !new_hash[name][k]
        # If this is falsey then move to next statement.

           new_hash[name][k] = []
          # If an array for that desired value does not exist yet (won't on first iteration), create an empty array.

         end

         new_hash[name][k] << kk.to_s
        # Turn kk (originally the :color keys) into a string and add to the end of the relevant item in iteration.

       end
    end
  end

   new_hash
  #Return new hash.

 end	end