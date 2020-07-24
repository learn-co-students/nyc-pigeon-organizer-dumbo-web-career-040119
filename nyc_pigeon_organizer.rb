def nyc_pigeon_organizer(data)
  p_hash = {}
  data.each do |attr, v_hash|
    p "attributes: #{attr}"
    v_hash.each do |sym, names|
      p "properties: #{sym}"
      names.each do |name|
        p_hash[name] ||= {}
        p_hash[name][attr] ||= []
        p_hash[name][attr] << sym.to_s
      end
    end
   end
p_hash
end
