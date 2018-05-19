require 'pry'

class String

  def sentence?
    if self.end_with?(".") == true
      return true
    else return false
    end
  end

  def question?
    if self.end_with?("?") == true
      return true
    else return false
    end
  end

  def exclamation?
    if self.end_with?("!") == true
      return true
    else return false
    end
  end

  def count_sentences

    if self.include? ","
      arr= self.gsub! "!", "."
      arr = arr.gsub "?", "."
      #remove empty strings from arr

      arr=arr.split(".")
      arr= arr.reject{|e| e.empty?}
      num=arr.count
    else
      num=(self.split).count
    end
  end
end
