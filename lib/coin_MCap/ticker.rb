class CoinMCap::Ticker
  attr_accessor :id, :name, :symbol, :rank, :price_usd, :price_btc, :24h_volume_usd, :market_cap_usd, :availble_supply, :total_supply, :max_supply, :percent_change_1h, :percent_change_24h, :percent_change_7d, :last_updated

@@all = []
  def initialize(ticker)
    #setter
     ticker.each {|key, value| self.send(("#{key}="), value)}
     @@all << self
  end

  def self.sort_by(value)
    all = @@all.sort_by {|attribute| attribute.send("#{value}")}
    all[0..9].each.with_index(1) do |name, i| puts "#{i}. #{name.symbol} - Volume(000,000) #{name.24h_volume_usd/100000}" end
  end

  def self.find_by_name(ticker)
#    @@all.each do |name| if name.MarketName.include? "#{ticker}"
  #    puts "#{name.MarketName} - Volume(000,000) #{name.Volume/100000} - Bid #{name.Bid} - Ask #{name.Ask}"
      end
    end
  end

  def self.all
  #  @@all.each.with_index(1) do |name, i| puts "#{i}. #{name.MarketName} - #{name.Volume/100} - #{name.OpenBuyOrders.to_i/100000} - #{name.Bid}" end
  end
end
