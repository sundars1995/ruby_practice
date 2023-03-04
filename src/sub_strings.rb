# frozen_string_literal: true

class SubStrings
  $result = {};

  def perform
    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    findStr = 'lowbelow'
    sub_strings(findStr.downcase, dictionary)
    puts $result
  end

  def sub_strings(findStr,dictionary)
    return if findStr.nil?
    dictionary.each do | word |
      matches = findStr.scan(word).length
      $result[word] = matches unless matches == 0
    end
  end

  SubStrings.new().perform

end