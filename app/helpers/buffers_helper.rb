module BuffersHelper
  def shamethod(buffer)
    "sonic_#{buffer.name.gsub(/[^a-zA-Z]/,'_')}_#{Digest::MD5.hexdigest(buffer.code)}".downcase
  end
end
