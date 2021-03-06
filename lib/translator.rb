# require modules here
require "yaml"
require "pry"

def load_library(file_path)
  emoticon_hash = {
    "get_meaning" => {},
    "get_emoticon" => {},
  }

  emoticon_lang = YAML.load_file(file_path)
  emoticon_lang.each do |word, emotes|
    english = emotes[0]
    japanese = emotes[1]
    emoticon_hash["get_meaning"][japanese] = word
    emoticon_hash["get_emoticon"][english] = japanese
  end
  return emoticon_hash
end

def get_japanese_emoticon(file, emoticon)
  library = load_library(file)
  if library["get_emoticon"].include?(emoticon)
    translated = library["get_emoticon"][emoticon]
  elsif library["get_emoticon"][emoticon].nil?
    return "Sorry, that emoticon was not found"
  end
end


def get_english_meaning(file, emoticon)
  library = load_library(file)
  if library["get_meaning"].include?(emoticon)
    translated = library["get_meaning"][emoticon]
  elsif library["get_meaning"][emoticon].nil?
    return "Sorry, that emoticon was not found"
  end
end
