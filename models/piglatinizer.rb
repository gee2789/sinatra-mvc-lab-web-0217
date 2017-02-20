class PigLatinizer
  attr_accessor :text


  def initialize(text=nil)
    @text = text
  end

  def piglatinize(word)
    final_word = []
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels

    text_array = word.split(" ")

    if vowels.include?(word[0].downcase)
      final_word << (word + "way")
    elsif consonants.include?(word[0].downcase) && consonants.include?(word[1])&& consonants.include?(word[2])
      final_word << (word[3..-1] + word[0..2] + 'ay')
    elsif consonants.include?(word[0].downcase) && consonants.include?(word[1])
      final_word << (word[2..-1] + word[0..1] + 'ay')
    elsif consonants.include?(word[0].downcase)
      final_word << (word[1..-1] + word[0] + 'ay')
    else
      final_word << word
    end
    final_word.join
  end

  def to_pig_latin(sentence)
    final_sentence = []
    sentence.split(" ").each do |words|
      final_sentence << piglatinize(words)
    end
    final_sentence.join(" ")
  end
end
