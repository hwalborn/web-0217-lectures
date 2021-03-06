describe Drink do 
    let(:bart_simpson) { Customer.new(name: 'bart simpson', hometown: 'springfield')}
    let(:lisa) { Customer.new(name: 'lisa simpson', hometown: 'springfield')}
    let(:maggie) { Customer.new(name: 'maggie simpson', hometown: 'springfield')}

    let(:moe) { Bartender.new(name: 'moe', hometown: 'springfield') }
    let(:selma) { Bartender.new(name: 'selma', hometown: 'springfield')}

    let(:rootbeer) { Drink.new(name: 'rootbeer', price: 3) }
    let(:milkshake) { Drink.new(name: 'milkshake', price: 4)}
    let(:juice) { Drink.new(name: 'juice', price: 2)}
    let(:duff) { Drink.new(name: 'duff', price: 5)}

  
    let!(:order_one) { Order.new(customer: bart_simpson, bartender: moe, drink: rootbeer) }
    let!(:order_two) { Order.new(customer: bart_simpson, bartender: moe, drink: milkshake) } 


  
    describe 'price=' do 
      it 'sets the price' do 
        juice.price = 20
        expect(juice.price).to eq(20)
      end
    end

  describe '#orders' do
    before do 
      Order.all.clear
      Order.new(customer: bart_simpson, bartender: moe, drink: rootbeer)

      Order.new(customer: bart_simpson, bartender: moe, drink: milkshake)

    end

    it 'should return all orders served by the bartender' do 
      expect(rootbeer.orders).to include(Order.all.first)
      expect(rootbeer.orders.count).to eq 1
    end 
  end

  describe '#bartenders' do
    it 'should return all drinks served by the bartender' do 
      expect(milkshake.bartenders).to include(moe)
    end 
  end

  describe '#customers' do
    it 'should return all drinks ordered by the customer' do 
      
    end 
  end
end