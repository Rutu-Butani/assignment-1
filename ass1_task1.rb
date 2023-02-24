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



COMPANY_NAME = "Lakeme"
$productcompany = "Lakeme-style"
class Product
    @@inc=1
    
    def initialize(name,price)
        @product_name = name
        @product_price = price
    end
  
    def getdetails
      
        puts "---------------------------- For Product #{@@inc} ------------------------------- "
        print "Enter Your name :"
        @fname=gets
        print "Enter GST:"
        @gst=gets
        puts
    end
    
    def gstcount
        count_gst = (@product_price.to_i * @gst.to_i)/100
        @totalprice = count_gst.to_i + @product_price.to_i
    end
    
    def printdetails
         
        puts "Welcome #{@fname} Your invoice with #{@gst}% gst are below"
        puts
       
        puts "product details :"
        puts
        puts "#{$productcompany} : #{@product_name} - #{@totalprice}"
        puts
        @@inc=@@inc + 1
    end
    

end

product1=Product.new("Sunscreen","450")
product1.getdetails
product1.gstcount
product1.printdetails

product2=Product.new("Lipstic","200")
product2.getdetails
product2.gstcount
product2.printdetails











