# require modules here
emoticons = YAML.load_file('./lib/emoticons.yml')

def load_library
  def load_library(emoticons)
    emoticons = YAML.load_file('./lib/emoticons.yml')
    final_hash={
      get_meaning: {},
      get_emoticon: {}
    }
  emoticons.each do |menaing, eglish_japanaise_emoji|
final_hash[:get_emoticon][eglish_japanaise_emoji[0]] = eglish_japanaise_emoji[1]
final_hash[:get_meaning][eglish_japanaise_emoji[1]] = menaing
  end
 final_hash
end

def get_japanese_emoticon
  
end

def get_english_meaning
  # code goes here
end