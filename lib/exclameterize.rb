require "exclameterize/version"

module Exclameterize
  def exclameterize(suffix)
    if self =~ /\!$/
      self.gsub(/\!$/, "_#{suffix}!")
    else
      self + "_#{suffix}"
    end
  end

  def unexclameterize(suffix)
    if self =~ /\!$/
      self.gsub(/_#{suffix}\!$/, "!")
    else
      self.gsub(/_#{suffix}$/, '')
    end
  end
end

class String
  include Exclameterize
end
