# require modules here
require "yaml"
require "pry"

# def load_library(file_path)
#
#   file_path = "./lib/emoticons.yml"
#   emoticon_hash = {
#     "get_meaning" => {},
#     "get_emoticon" => {},
#   }
#
#   emoticon_lang = YAML.load_file(file_path)
#   emoticon_lang.each do |word, emotes|
#     english = emotes[0]
#     japanese = emotes[1]
#     emoticon_hash["get_meaning"][english] = japanese
#     emoticon_hash["get_emoticon"][japanese] = word
#   end
#   return emoticon_hash
# end
def load_library(emoticon_file)
  # code goes here
  emoticons = YAML.load_file('./lib/emoticons.yml')

   emoticon_lib = {'get_meaning'  => {},
                  'get_emoticon' => {} }

   emoticons.each do |meaning, value|  # meaning= "surprised"   # value= [":o", "o_O"]  <-(e,j)
    english = value[0]
    japanese = value[1]
    emoticon_lib['get_meaning'][japanese] = meaning
    emoticon_lib['get_emoticon'][english] = japanese
  end
  emoticon_lib
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
