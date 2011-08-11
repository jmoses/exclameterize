require "exclameterize/version"

module Exclameterize
  def exclameterize(suffix)
    if self =~ /\!$/
      self.gsub(/\!$/, "_with_#{suffix}!")
    else
      self + "_with_#{suffix}"
    end
  end

  def unexclameterize(suffix)
    if self =~ /\!$/
      self.gsub(/_with_#{suffix}\!$/, "!")
    else
      self.gsub(/_with_#{suffix}$/, '')
    end
  end
end

class String
  include Exclameterize
end
