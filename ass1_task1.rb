=begin
Create one example of product. There is one shop that have different product
- user can not change name of the shop
- all Product have same company
- get 
- pass product data like (name, price) etc. display products data using different method
- ask gst percentage and display price with included gst(local)
example product price is 100 and entered gst is 5%. then result should be 105

Example
product= Product.new('keyboard', 100)
product.get_user

OUTPUT

enter your name
swati
enter gst
5

Welcome swati. Your invoice with 5% gst are below

product details
keyboard - 105
=end



class Shop
  
   def gstcount(pname,price)
        @pname=pname
        @price=price
        puts "product details"
        puts "#{@pname}: #{@price}"
        @result=(@price.to_i*@gst.to_i)/ 100
        #puts "#{@result}"
        @keyboard=(@result+5)
        puts "keyboard:#{@keyboard}"
    end
    
    def display
        puts "enter your name"
        @name=gets
        puts "enter gst"
        @gst=gets
        puts "welcome #{@name}"+"Your invoice with #{@gst}% gst are below"

    end
end


shop=Shop.new
shop.display
shop.gstcount("rutu",100)











