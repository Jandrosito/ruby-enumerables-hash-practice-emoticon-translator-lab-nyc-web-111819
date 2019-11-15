# require modules here

  def load_library(emoticons)
    emoticons = YAML.load_file('./lib/emoticons.yml')
    final_hash={
      get_meaning: {},
      get_emoticon: {}
    }
  emoticons.each do |meaning, english_japanese_emoji|
final_hash[:get_emoticon][english_japanese_emoji[0]] = english_japanese_emoji[1]
final_hash[:get_meaning][english_japanese_emoji[1]] = meaning
  end
 final_hash
end

def get_japanese_emoticon(emoticons, target)
  new_hash=load_library(emoticons)
  emoticons = YAML.load_file('./lib/emoticons.yml')
  new_hash[:get_emoticon].each do |english, japan|
 if english == target
   return japan
 end
 end
 return "Sorry, that emoticon was not found"
end

def get_english_meaning(emoticons, target0)
  library=load_library(emoticons)
  emoticons = YAML.load_file('./lib/emoticons.yml')
    library[:get_meaning].each do |k,v|
      if k == target
        return v
      end
    end
    return  "Sorry, that emoticon was not found"
end
