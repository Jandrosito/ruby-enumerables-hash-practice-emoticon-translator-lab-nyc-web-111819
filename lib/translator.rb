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
  new_hash=load_library(emoticons)
  emoticons = YAML.load_file('./lib/emoticons.yml')
  new_hash[:get_emoticon].each do |english, japain|
 if english == target
   return japain
 end
 end
 return "Sorry, that emoticon was not found"
end

def get_english_meaning
  library=load_library(emoticons)
  emoticons = YAML.load_file('./lib/emoticons.yml')
    library[:get_meaning].each do |k,v|
      if k == target
        return v
      end
    end
    return  "Sorry, that emoticon was not found"
end