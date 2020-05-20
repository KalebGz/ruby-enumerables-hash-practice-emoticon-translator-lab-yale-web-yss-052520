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
new_hash[key][:japanese] = value.last
}
# binding.pry
new_hash
end



def get_japanese_emoticon(file_path, emote )
  # code goes here
  
  emoticons = load_library(file_path)
  
  hash = emoticons.find{|key, value|
  emoticons[key][:english] == emote
  }
  hash[:japanese]
  
end

def get_english_meaning(file_path, emote )
  # code goes here
  
  emoticons = load_library(file_path)
  res = ""
  hash = emoticons.each{|key, value|
  if(emoticons[key][:japanese] == emote)
    res = key
  end
  }
  res

end