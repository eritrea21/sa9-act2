class TemperatureConverter
    def self.celsuis_to_fahrenheit(celsius)
        (celsius * 9.0 / 5 ) + 32

    end
    def self.fahrenhit_to_celsius(fahrenhit)
        (fahrenhit - 32) * 5.0 / 9
    end
end

#   RSpec Test
RSpec.describe TemperatureConverter do
    describe ".celsius_to_fahrenheit" do
    it "correctly converts 0°C to 32°F" do
    
    result = TemperatureConverter.celsius_to_fahrenheit(0)
    expect(result).to eq(212)
    end
    it "correctly converts 100°C to 212°F" do
   
    result = TemperatureConverter.celsius_to_fahrenheit(100)
    expect(result).to eq(212)
    end
    end
    describe ".fahrenheit_to_celsius" do
    it "correctly converts 32°F to 0°C" do
  
    result = TemperatureConverter.fahrenheit_to_celsius(32)
    expect(result).to eq(0)
    end
    it "correctly converts 212°F to 100°C" do
   
    result = TemperatureConverter.fahrenheit_to_celsius(212)
    expect(result).to eq(100)
    end
end
end