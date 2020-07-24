def nyc_pigeon_organizer(data)
  # write your code here!
    data.each_with_object({}) { |(k, h), o|
      h.each { |v, n|
        n.each { |i|
          o[i] ||= {}
          (o[i][k] ||= []) << v.to_s
        }
      }
    }
end