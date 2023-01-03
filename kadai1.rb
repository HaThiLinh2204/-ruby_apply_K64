class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください
  def get_total_price(count)
    if count <= 0
      '無効'
    elsif count < 3
      total_price = count * price
      "#{name} #{total_price} vnd"
    else
      total_price = count * price - 10_000
      "#{name} #{total_price} vnd"
    end
  end
end

menu1 = Menu.new
menu1.name = 'Phở'
menu1.price = 30_000

# menu1に対してget_total_priceメソッドを呼び出してください
p menu1.get_total_price(3)
