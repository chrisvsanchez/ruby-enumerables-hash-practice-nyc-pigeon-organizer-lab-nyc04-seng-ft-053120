require 'pry'
# def nyc_pigeon_organizer(data)
#   # write your code here!
#    final_results = data.each_with_object({}) do |(key,value), final_array|
#      #
#      value.each do |inner_key, names|
#        names.each do |name|
#       #binding.pry   
#       
#       if !final_array[name]
#         final_array[name] = {}
#         end
#         
#         if !final_array[name][key]
#             !final_array[name][key] = []
#           end
#           
#           final_array[name][key].push(inner_key.to_s)
#      end
#     end
#    end
#   binding.pry
# end

def nyc_pigeon_organizer(data)
  new_hash = {}
  
  data.each do |key, value|
    # puts "Data's #{key} is #{value}"
    
    value.each do |new_value, names|
      # puts "Data's #{new_value} is #{names}"
      names.each do |name|
        
        # puts "Data's #{name}"
        if !new_hash[name]
          new_hash[name] = {}
        end

        if !new_hash[name][key]
          new_hash[name][key] = []
        end

        new_hash[name][key] << new_value.to_s

      end
    end
  end
  new_hash
  binding.pry
  p 
end