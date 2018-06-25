def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |characteristic, characteristic_hash|
    characteristic_hash.each do |trait, trait_array|
      trait_array.each do |name|
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
        end
        if pigeon_list[name][characteristic] == nil
          pigeon_list[name][characteristic] = []
        end
        if data[characteristic][trait].include?(name)
          pigeon_list[name][characteristic] << trait.to_s
        end
      end
    end
  end
  pigeon_list
end