class DieLibrary

	def self.IsValidNumber?(number)
  		return (number.to_i >= Integer(1) && number.to_i <= Integer(6))
	end

	def self.IsValidString?(yesorno)
  		return (yesorno == 'yes' or yesorno == 'no')
	end

	def self.ValidateNumber(number)
  		return (IsValidNumber?(number) or 'Valid numbers are 1 thru 6.')
	end

	def self.ValidateString(yesorno)
  		return (IsValidString?(yesorno) or 'Valid inputs are yes and no.')
	end
end