def begins_with_r(tools)
  tools.all? do |element|
    element.start_with?("r")
  end
end

def contain_a(array)
  array.select do |element|
    element.include?("a")
  end
end

def first_wa(array)
  to_strings = array.join(",")
  all_string_array = to_strings.split(",")

  all_string_array.find do |element|
    element.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.select do |element|
    element.is_a?(String)
  end
end

def count_elements(array)
  new_hash = Hash.new(0)
  unique_array = array.uniq
  array.each do |element|
    new_hash[element] += 1
  end

  new_hash.each do |key, value|
    unique_array << key[:count] = value
  end

  unique_array.select do |element|
    element.kind_of?(Hash)
  end
end

def merge_data(keys, data)
blake_data = keys[0]
ashley_data = keys[1]


  data.each do |element|
    element.each do |name, data|
      if name == "blake"
        data.each do |key, value|
          blake_data[key] = value
        end
      else
        data.each do |key, value|
          ashley_data[key] = value
        end
      end
    end
  end
  data_array = []

  data_array[0] = blake_data
  data_array[1] = ashley_data

  data_array

end

def find_cool(cool)
  hash = {}
  cool.each do |nested_hashes|
    nested_hashes.each do |key, value|
      if nested_hashes[:temperature] == "cool"
        hash[key] = value
      end
    end
  end
  array = []
  array << hash
end

def organize_schools(schools)
  city_hash = {}
  city_array = []
  schools.each do |school_name, location_data|
    location_data.each do |location_symbol, city|
      city_array << city
    end
  end

  city_list = city_array.uniq
  zero_index_schools = []
  zero_city_hash = {}
  one_index_schools = []
  one_city_hash = {}
  two_index_schools = []
  two_city_hash = {}

  schools.each do |school_name, location_data|
    location_data.each do |location_symbol, city|
      if city_list[0] == city
        zero_index_schools << school_name
        zero_city_hash[city] = zero_index_schools
      elsif city_list[1] == city
        one_index_schools << school_name
        one_city_hash[city] = one_index_schools
      elsif city_list[2] == city
        two_index_schools << school_name
        two_city_hash[city] = two_index_schools
      end
    end
  end
  combo = zero_city_hash.merge(one_city_hash)
  final_hash = combo.merge(two_city_hash)
  final_hash
end
