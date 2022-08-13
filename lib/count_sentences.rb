require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end
  
  def question?
    self.end_with?("?")
    
  end
  
  def exclamation?
    self.end_with?("!")

  end

  def count_sentences
    endings = [".", "!", "?"]
    sentences = 0
    self.chars.each.with_index do |char, index|
      if endings.include?(char) && !endings.include?(self[index + 1])
        sentences += 1
      end
    end
    sentences
    
    
  end
end