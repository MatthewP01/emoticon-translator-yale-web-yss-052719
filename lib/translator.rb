# require modules here
require "yaml"
require "pry"

def load_library(file_path)
  emoticon_hash = {
    get_meaning => {},
    get_emoticon => {},
  }

  emoticon_lang = YAML.load_file(file_path)
  emoticon_lang.each do |word, emotes|
    english = emotes[1]
    japanese = emotes[2]
    emoticon_hash[get_meaning] = english
    emoticon_hash[get_emoticon] = japanese
  end
  return emoticon_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
