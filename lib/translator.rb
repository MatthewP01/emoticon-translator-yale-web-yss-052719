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
    


  end

end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
