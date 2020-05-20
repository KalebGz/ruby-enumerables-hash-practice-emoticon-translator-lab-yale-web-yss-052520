# require modules here
require "pry"
require "yaml"

def load_library(file_path)
  # code goes here
  
hash = YAML.load_file(file_path)
new_hash = {}
# new_hash[:english] = {}
# new_hash[:japanese] = {}
hash.each{|key, value|
new_hash[key] = {}
new_hash[key][:english] =  value.first
new_hashkey[:japanese] = value.last
}
binding.pry
new_hash
end

# res = data.each_with_object({}){ |(key, value), final_hash|
#     value.each{|inner_key, names|
#       names.each{ |name|
#         if !final_hash[name]
#           final_hash[name] = {}
#         end
#         if !final_hash[name][key]
#           final_hash[name][key] = []
#         end
#         final_hash[name][key].push(inner_key.to_s)
#       }
#     }
#   }


def get_japanese_emoticon
  # code goes here
  emoticons = load_library(emoticons.YAML)
end

def get_english_meaning
  # code goes here
  emoticons = load_library
end