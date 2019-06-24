#Example 1
RSpec.describe "An Example Group with positive and negative Examples" do
   context 'when testing Ruby\'s build-in math library' do

      it 'can do normal numeric operations' do
         expect(1 + 1).to eq(2)
      end

      it 'generates an error when expected' do
         expect{1/0}.to raise_error(ZeroDivisionError)
      end

   end
end
#run `rspec filter_spec.rb` in terminal

#Example 2
RSpec.describe "An Example Group with positive and negative Examples" do
   context 'when testing Ruby\'s build-in math library' do

      it 'can do normal numeric operations', positive: true do
         expect(1 + 1).to eq(2)
      end

      it 'generates an error when expected', negative: true do
         expect{1/0}.to raise_error(ZeroDivisionError)
      end

   end
end
#run `rspec --tag positive filter_spec.rb` or `rspec --tag negative filter_spec.rb` in terminal

#Example 3
RSpec.describe "A spec file to demonstrate how RSpec Formatters work" do
   context 'when running some tests' do

      it 'the test usually calls the expect() method at least once' do
         expect(1 + 1).to eq(2)
      end

   end
end
#rspec --format progress formatter_spec.rb
#rspec --format doc formatter_spec.rb

#Example 3
RSpec.describe "A spec file to demonstrate how RSpec Formatters work" do
   context 'when running some tests' do

      it 'the test usually calls the expect() method at least once' do
         expect(1 + 1).to eq(1)
      end

   end
end
#rspec --format doc formatter_spec.rb
