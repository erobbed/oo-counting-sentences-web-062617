require 'pry'

class String

  def sentence?
    self[-1] == "." ? true : false
  end

  def question?
    self[-1] == "?" ? true : false
  end

  def exclamation?
    self[-1] == "!" ? true : false
  end

  def count_sentences
    if sentence? || question? || exclamation?
      self.squeeze('.!?').count('.!?')
    else
      0
    end
  end
end
